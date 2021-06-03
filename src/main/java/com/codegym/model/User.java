package com.codegym.model;

public class User {
    private int id;
    private String userName;
    private String passWord;
    private String gender;
    private String phone;
    private String rank;

    public User() {
    }

    public User( String userName, String passWord, String gender, String phone, String rank) {
        this.userName = userName;
        this.passWord = passWord;
        this.gender = gender;
        this.phone = phone;
        this.rank = rank;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }
}
