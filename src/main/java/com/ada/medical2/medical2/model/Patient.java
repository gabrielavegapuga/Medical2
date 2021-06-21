package com.ada.medical2.medical2.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Data
@Entity
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_patient;

    private String name;
    private String lastname;
    private int dni;
    private int age;
    private char gender;
    private Date day_birth;
    private String address;
    private int phone;
    private String email;

    @OneToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "id_app", referencedColumnName = "id_app")
    private Appointment app;

    @OneToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "id_record", referencedColumnName = "id_record")
    private Medical_record record;

   /*@JsonIgnore
    @JsonBackReference
    @ManyToMany(mappedBy = "doctorPatient")
    private Set<Doctor> doctorSet;*/

    public int getId_patient() {
        return id_patient;
    }

    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public Date getDay_birth() {
        return day_birth;
    }

    public void setDay_birth(Date day_birth) {
        this.day_birth = day_birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Appointment getApp() {
        return app;
    }

    public void setApp(Appointment app) {
        this.app = app;
    }

    public Medical_record getRecord() {
        return record;
    }

    public void setRecord(Medical_record record) {
        this.record = record;
    }





}
