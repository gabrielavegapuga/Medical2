package com.ada.medical2.medical2.repository;

import com.ada.medical2.medical2.model.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface PatientRepository extends CrudRepository<Patient,Integer> {

    @Query("from Patient where dni=:dni")
    Iterable<Patient> getPatientByDni(@Param("dni") int dni);
}
