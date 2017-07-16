package com.blog.entity;

import javax.persistence.*;

/**
 * Created by Chia's JaJa on 2017/6/8.
 */
@Entity
@Table(name = "product", schema = "mommybaby")
public class ProductEntity {
    private int pid;
    private String pname;
    private String pintroduction;

    @Id
    @Column(name = "pid", nullable = false)
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Basic
    @Column(name = "pname", nullable = false, length = 20)
    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    @Basic
    @Column(name = "pintroduction", nullable = false, length = 20)
    public String getPintroduction() {
        return pintroduction;
    }

    public void setPintroduction(String pintroduction) {
        this.pintroduction = pintroduction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductEntity that = (ProductEntity) o;

        if (pid != that.pid) return false;
        if (pname != null ? !pname.equals(that.pname) : that.pname != null) return false;
        if (pintroduction != null ? !pintroduction.equals(that.pintroduction) : that.pintroduction != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pid;
        result = 31 * result + (pname != null ? pname.hashCode() : 0);
        result = 31 * result + (pintroduction != null ? pintroduction.hashCode() : 0);
        return result;
    }
}
