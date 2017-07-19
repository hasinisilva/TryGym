package com.trygym.solution.model;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;
import com.trygym.solution.model.Role;
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String username;
    private String password;
    private String name;
    private String address;
    private String nic;
    private String contact;
    private String job;
    private String height;
    private String weight;
    private String health;
    private String pack;
    private String workout;
    private String duration;

    @Transient
    private String passwordConfirm;
    private String email;

    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    //getter and setter for id
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    //getter and setter for username
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    //getter and setter for password
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //getter and setter for email
    public String getEmail(){
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    //email confirmation
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    //getter and setter for name
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    //getter setter for address
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    //getter setter for nic
    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    //getter setter for contact
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    //getter setter for job
    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    //getter setter for height
    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    //getter setter for weight
    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    //getter setter for health
    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    //getter setter for package
    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }


    public void setWorkout(String workout) {
        this.workout = workout;
    }

    public String getWorkout() {
        return workout;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getDuration() {
        return duration;
    }

    //set user roles
    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}
