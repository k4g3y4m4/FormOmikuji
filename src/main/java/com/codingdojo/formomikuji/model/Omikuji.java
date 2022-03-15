package com.codingdojo.formomikuji.model;

public class Omikuji {
    private Integer Number;
    private String City;
    private String Name;
    private String Profession;
    private String Living;
    private String text;


    public Omikuji(Integer number, String city, String name, String profession, String living, String text) {
        this.Number = number;
        this.City = city;
        this.Name = name;
        this.Profession = profession;
        this.Living = living;
        this.text = text;
    }

    //getters and setters
    public Integer getNumber() {
        return Number;
    }

    public void setNumber(Integer number) {
        this.Number = number;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        this.City = city;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getProfession() {
        return Profession;
    }

    public void setProfession(String profession) {
        this.Profession = profession;
    }

    public String getLiving() {
        return Living;
    }

    public void setLiving(String living) {
        this.Living = living;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}

