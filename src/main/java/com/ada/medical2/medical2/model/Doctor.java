package com.ada.medical2.medical2.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Data
@Entity
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_doctor;

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
    @JoinColumn(name = "id_schedule", referencedColumnName = "id_schedule")
    private Schedule_doctor schedule_doctor;

    @OneToOne
    @JoinColumn(name = "id_specialty", referencedColumnName = "id_specialty")
    private Specialty id_specialty;

   // @JsonManagedReference
    @ManyToMany
    @JoinTable(name = "doctor_x_patient", joinColumns = @JoinColumn(name = "id_doctor"),
            inverseJoinColumns = @JoinColumn(name = "id_patient"))
    private Set<Patient> doctorPatient;

    public int getId_doctor() {
        return id_doctor;
    }

    public void setId_doctor(int id_doctor) {
        this.id_doctor = id_doctor;
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

    public Schedule_doctor getSchedule_doctor() {
        return schedule_doctor;
    }

    public void setSchedule_doctor(Schedule_doctor schedule_doctor) {
        this.schedule_doctor = schedule_doctor;
    }

    public Specialty getId_specialty() {
        return id_specialty;
    }

    public void setId_specialty(Specialty id_specialty) {
        this.id_specialty = id_specialty;
    }

    public Set<Patient> getDoctorPatient() {
        return doctorPatient;
    }

    public void setDoctorPatient(Set<Patient> doctorPatient) {
        this.doctorPatient = doctorPatient;
    }
}
