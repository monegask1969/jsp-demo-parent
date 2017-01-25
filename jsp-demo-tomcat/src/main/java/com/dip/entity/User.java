package com.dip.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;

/**
 * Created by moneg on 08.01.2017.
 */
@Entity
@Table(name = "user")
public class User implements Serializable, UserDetails, GrantedAuthority {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name="username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "email")
    private String email;
//    @Column
//    private String passwordConfirm;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @OneToOne(optional = false)
    @JoinColumn(name="human_id", unique = true, nullable = false)
    private Human human;

    public Human getHuman() {
        return human;
    }

    public void setHuman(Human human) {
        this.human = human;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//    @Transient
//    public String getPasswordConfirm() {
//        return passwordConfirm;
//    }
//
//    public void setPasswordConfirm(String passwordConfirm) {
//        this.passwordConfirm = passwordConfirm;
//    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Arrays.asList(new GrantedAuthority[]{this});
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public String getAuthority() {
        return null;
    }
}
