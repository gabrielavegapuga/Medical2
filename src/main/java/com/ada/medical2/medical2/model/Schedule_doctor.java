package com.ada.medical2.medical2.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Schedule_doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_schedule;

    private String days;
    private String time;
}
