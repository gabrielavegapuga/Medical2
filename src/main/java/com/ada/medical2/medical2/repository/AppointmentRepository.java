package com.ada.medical2.medical2.repository;

import com.ada.medical2.medical2.model.Appointment;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AppointmentRepository extends CrudRepository<Appointment, Integer> {

    @Query("from Appointment where year(day)=:year and month(day)=:month and day(day)=:day")
    Iterable<Appointment> getAppsForDate(@Param("year") int year, @Param("month") int month,
                                         @Param("day") int day);
}
