package com.blog.entity;

import javax.persistence.*;

/**
 * Created by Chia's JaJa on 2017/6/10.
 */
@Entity
@Table(name = "rss", schema = "mommybaby", catalog = "")
public class RssEntity {
    private String title;
    private String description;
    private String link;
    private String publishedDate;
    private int rid;

    @Basic
    @Column(name = "title", nullable = false, length = 30)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "description", nullable = false, length = 100)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "link", nullable = false, length = 80)
    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Basic
    @Column(name = "publishedDate", nullable = false, length = 30)
    public String getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(String publishedDate) {
        this.publishedDate = publishedDate;
    }

    @Id
    @Column(name = "rid", nullable = false)
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RssEntity rssEntity = (RssEntity) o;

        if (rid != rssEntity.rid) return false;
        if (title != null ? !title.equals(rssEntity.title) : rssEntity.title != null) return false;
        if (description != null ? !description.equals(rssEntity.description) : rssEntity.description != null)
            return false;
        if (link != null ? !link.equals(rssEntity.link) : rssEntity.link != null) return false;
        if (publishedDate != null ? !publishedDate.equals(rssEntity.publishedDate) : rssEntity.publishedDate != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = title != null ? title.hashCode() : 0;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (link != null ? link.hashCode() : 0);
        result = 31 * result + (publishedDate != null ? publishedDate.hashCode() : 0);
        result = 31 * result + rid;
        return result;
    }
}
