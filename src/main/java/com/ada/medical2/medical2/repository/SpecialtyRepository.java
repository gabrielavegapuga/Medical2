package com.ada.medical2.medical2.repository;

import com.ada.medical2.medical2.model.Specialty;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SpecialtyRepository extends CrudRepository<Specialty,Integer> {

    @Query("from Specialty where specialty like %:spe%")
    Iterable<Specialty> getSpecialtyLike(@Param("spe") String spe);
}
