package com.blog.action;
/**
 * Created by Chia's JaJa on 2017/5/12.
 */
import com.blog.form.SendEmailForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SendEmailController {

    @Value("/ryan/contact")
    private String viewPage;

    @Autowired
    private JavaMailSender mailSender;

    @ModelAttribute("sendemail")
    public SendEmailForm setSendEmailForm() {
        return new SendEmailForm();
    }

    //指向Form的所在位置
    @GetMapping("/ryan/contact")
    public String registration() {
        return "ryan/contact";
    }

    @PostMapping("/ryan/contact")
    public void SendEmail(@ModelAttribute("sendemail") SendEmailForm sendemail) {

        //print
        System.out.println("Name : " + sendemail.getName());
        System.out.println("Address : " + sendemail.getAddress());
        System.out.println("Subject : " + sendemail.getSubject());
        System.out.println("Message : " + sendemail.getMessage());

        // create e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo("ryanblogtest@gmail.com");
        email.setSubject(sendemail.getSubject());

        email.setText(
                "Name:" + "\n" + sendemail.getName() + "\n"
                + "Address:" + "\n" + sendemail.getAddress() + "\n"
                + sendemail.getMessage() + "\n"
        );

        // sends the e-mail
        mailSender.send(email);

    }

}
