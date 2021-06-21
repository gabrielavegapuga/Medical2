package com.ada.medical2.medical2.repository;

import com.ada.medical2.medical2.model.Doctor;
import com.ada.medical2.medical2.model.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface DoctorRepository extends CrudRepository<Doctor,Integer> {

    @Query("from Doctor where dni=:dni")
    Iterable<Doctor> getDoctorByDni(@Param("dni") int dni);
}
