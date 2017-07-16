package com.blog.RESTful;

import com.blog.entity.UserEntity;
import com.blog.repository.RyanInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

/**
 * Created by Chia's JaJa on 2017/6/12.
 */

@RestController
public class RestfulController{

    @Autowired
    RyanInterface ryan;

    //-------------------Retrieve All Users--------------------------------------------------------

   @GetMapping(value = "/user.json")
    public ResponseEntity<List<UserEntity>> listAllUsers() {
        List<UserEntity> users = ryan.findAll();
        if(users.isEmpty()){
            return new ResponseEntity<List<UserEntity>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<UserEntity>>(users, HttpStatus.OK);
    }

    //-------------------Retrieve Single User--------------------------------------------------------

    @GetMapping(value = "/user/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> getUser(@PathVariable("id") int id) {
        System.out.println("Fetching User with id " + id);
        UserEntity user = ryan.findOne(id);
        if (user == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<UserEntity>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<UserEntity>(user, HttpStatus.OK);
    }

    //-------------------Create a User--------------------------------------------------------

    @PostMapping(value = "/user")
    public ResponseEntity<Void> createUser(@RequestBody UserEntity user, UriComponentsBuilder ucBuilder) {
        System.out.println("Creating User " + user.getName());

        if (ryan.exists(user.getId())) {
            System.out.println("A User with name " + user.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

        ryan.saveAndFlush(user);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }

    //------------------- Update a User --------------------------------------------------------

    @RequestMapping(value = "/user/{id}", method = RequestMethod.PUT)
    public ResponseEntity<UserEntity> updateUser(@PathVariable("id") int id, @RequestBody UserEntity user) {
        System.out.println("Updating User " + id);

        UserEntity currentUser = ryan.findOne(id);

        if (currentUser==null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<UserEntity>(HttpStatus.NOT_FOUND);
        }

        currentUser.setName(user.getName());
        currentUser.setPassword(user.getPassword());

        ryan.save(currentUser);
        return new ResponseEntity<UserEntity>(currentUser, HttpStatus.OK);
    }

    // ------------------- Delete a User-----------------------------------------

    @RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> deleteUser(@PathVariable("id") int id) {

        UserEntity user = ryan.findOne(id);
        if (user == null) {
            return new ResponseEntity<UserEntity>(HttpStatus.NOT_FOUND);
        }

        ryan.delete(id);
        ryan.flush();

        return new ResponseEntity<UserEntity>(HttpStatus.NO_CONTENT);
    }

    // ------------------- Delete All Users-----------------------------

    @RequestMapping(value = "/user/", method = RequestMethod.DELETE)
    public ResponseEntity<UserEntity> deleteAllUsers() {

        ryan.deleteAll();
        ryan.flush();

        return new ResponseEntity<UserEntity>(HttpStatus.NO_CONTENT);
    }

}




