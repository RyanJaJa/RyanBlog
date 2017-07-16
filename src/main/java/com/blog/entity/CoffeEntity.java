package com.blog.entity;

import javax.persistence.*;

/**
 * Created by Chia's JaJa on 2017/6/8.
 */
@Entity
@Table(name = "coffe", schema = "mommybaby")
public class CoffeEntity {
    private int pid;
    private String product;
    private String ingredients;
    private String proportion;

    @Id
    @Column(name = "pid", nullable = false)
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Basic
    @Column(name = "product", nullable = false, length = 30)
    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    @Basic
    @Column(name = "ingredients", nullable = false, length = 30)
    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    @Basic
    @Column(name = "proportion", nullable = false, length = 30)
    public String getProportion() {
        return proportion;
    }

    public void setProportion(String proportion) {
        this.proportion = proportion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CoffeEntity that = (CoffeEntity) o;

        if (pid != that.pid) return false;
        if (product != null ? !product.equals(that.product) : that.product != null) return false;
        if (ingredients != null ? !ingredients.equals(that.ingredients) : that.ingredients != null) return false;
        if (proportion != null ? !proportion.equals(that.proportion) : that.proportion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pid;
        result = 31 * result + (product != null ? product.hashCode() : 0);
        result = 31 * result + (ingredients != null ? ingredients.hashCode() : 0);
        result = 31 * result + (proportion != null ? proportion.hashCode() : 0);
        return result;
    }
}
