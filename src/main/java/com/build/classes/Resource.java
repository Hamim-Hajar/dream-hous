package com.build.classes;

public class Resource {
    private int id;
    private String name;
    private String type;
    private int quantity;
    private String fournisseurInfo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getFournisseurInfo() {
        return fournisseurInfo;
    }

    public void setFournisseurInfo(String fournisseurInfo) {
        this.fournisseurInfo = fournisseurInfo;
    }
//constractor
    public Resource(int id, String name, String type, int quantity, String fournisseurInfo) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.quantity = quantity;
        this.fournisseurInfo = fournisseurInfo;
    }

    @Override
    public String toString() {
        return "Resource{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", quantity=" + quantity +
                ", fournisseurInfo='" + fournisseurInfo + '\'' +
                '}';
    }
}
