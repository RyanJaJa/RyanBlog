package com.blog.action;


import com.blog.entity.RssEntity;
import com.blog.form.CoffeForm;
import com.blog.form.RSSForm;
import com.blog.repository.CoffeeRepository;
import com.blog.repository.RssRepository;
import com.sun.syndication.feed.synd.SyndEntryImpl;
import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.io.SyndFeedInput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.xml.sax.InputSource;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.zip.GZIPInputStream;

/**
 * Created by Chia's JaJa on 2017/6/9.
 */
@Controller
public class CrawlerController{

    @Autowired
    RssRepository rssmodel;

    @ModelAttribute("rss")
    public RSSForm setRSSForm() {
        return new RSSForm();
    }

    @GetMapping("/ryan/rsscrawler")
    public String rsscrawler() {
        return "/ryan/rsscrawler";
    }

    @PostMapping("/ryan/rsscrawler")
    public String crawler(@ModelAttribute("rss") RSSForm rss) {
        RssEntity rs;
        SyndFeed feed;
        try {
            feed = getSyndFeedForUrl(rss.getUrl());
            List res = feed.getEntries();

            for(Object o : res) {
                rs = new RssEntity();
                rs.setTitle(((SyndEntryImpl) o).getTitle());
                rs.setDescription(((SyndEntryImpl) o).getDescription().getValue());
                rs.setLink(((SyndEntryImpl) o).getLink());
                rs.setPublishedDate(((SyndEntryImpl) o).getPublishedDate().toString());
                rssmodel.saveAndFlush(rs);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/ryan/rsscrawler";
    }

    public static SyndFeed getSyndFeedForUrl(String url) throws Exception {

        SyndFeed feed = null;
        InputStream is = null;

        try {

            URLConnection openConnection = new URL(url).openConnection();
            is = new URL(url).openConnection().getInputStream();
            if("gzip".equals(openConnection.getContentEncoding())){
                is = new GZIPInputStream(is);
            }
            InputSource source = new InputSource(is);
            SyndFeedInput input = new SyndFeedInput();
            feed = input.build(source);

        } catch (Exception e){
            e.printStackTrace();
        } finally {
            if( is != null) is.close();
        }

        return feed;
    }


}
