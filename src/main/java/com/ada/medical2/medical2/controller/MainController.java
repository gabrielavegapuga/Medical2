package com.ada.medical2.medical2.controller;

import com.ada.medical2.medical2.model.*;
import com.ada.medical2.medical2.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping(path = "/medical/ada/v1")
public class MainController {

    @Autowired
    private PatientRepository patientRepository;

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private DoctorRepository doctorRepository;

    @Autowired
    private MedicalRecordRepository medicalRecordRepository;

    @Autowired
    private ScheduleDoctorRepository scheduleDoctorRepository;

    @Autowired
    private SpecialtyRepository specialtyRepository;

    @GetMapping(path = "/patient/all")
    public @ResponseBody
    Iterable<Patient> getAllPatient(){
        return patientRepository.findAll();
    }

    @GetMapping(path = "/doctor/all")
    public @ResponseBody
    Iterable<Doctor> getAllDoctor(){
        return doctorRepository.findAll();
    }

    @GetMapping(path = "/app/all")
    public @ResponseBody
    Iterable<Appointment> getAllAppointment(){
        return appointmentRepository.findAll();
    }

    @GetMapping(path = "/record/all")
    public @ResponseBody
    Iterable<Medical_record> getAllRecord(){
        return medicalRecordRepository.findAll();
    }

    @GetMapping(path = "/schedule/all")
    public @ResponseBody
    Iterable<Schedule_doctor> getAllSchedule(){
        return scheduleDoctorRepository.findAll();
    }

    @GetMapping(path = "/specialty/all")
    public @ResponseBody
    Iterable<Specialty> getAllSpecialty(){
        return specialtyRepository.findAll();
    }

    //Busqueda por id

    @GetMapping(path = "/specialty/id/{id_specialty}")
    public @ResponseBody
    ResponseEntity<SpecialtyResponse> getSpecialtyById(@PathVariable("id_specialty") int id_specialty){
        SpecialtyResponse response = new SpecialtyResponse();
        try {
            response.setSpecialty(specialtyRepository.findById(id_specialty).get());
            response.setMessage("OK!");
            return ResponseEntity.ok(response);
        }catch (Exception e){

            response.setMessage("Id no encontrado / " + e.getMessage());
            return ResponseEntity.badRequest().body(response);
        }
    }

    //Busqueda por DNI

    @GetMapping(path = "/patient/dni/{dni}")
    public @ResponseBody
    Iterable<Patient> getPatientDni(@PathVariable("dni") int dni){
        return patientRepository.getPatientByDni(dni);
    }

    @GetMapping(path = "/doctor/dni/{dni}")
    public @ResponseBody
    Iterable<Doctor> getDoctorDni(@PathVariable("dni") int dni){
        return doctorRepository.getDoctorByDni(dni);
    }

    //Buscar si tenemos cierta especialidad


    @GetMapping(path = "/specialty/contains/{spe}")
    public @ResponseBody
    Iterable<Specialty> getSpecialtyLike(@PathVariable("spe") String spe){
        return specialtyRepository.getSpecialtyLike(spe);
    }

    //Buscar las citas agendadas para cierta fecha

    @GetMapping(path = "/apps/date/{year}/{month}/{day}")
    public @ResponseBody
    Iterable<Appointment> getAppDate(@PathVariable("year") int year, @PathVariable("month") int month,
                                     @PathVariable("day") int day){
        return appointmentRepository.getAppsForDate(year, month, day) ;
    }


    //CREATES:

    @PostMapping(path = "/specialty/create", consumes = "application/json", produces = "application/json")
    public Specialty createSpecialty(@RequestBody Specialty newSpecialty){
        return specialtyRepository.save(newSpecialty);
    }

    @PostMapping(path = "/record/create", consumes = "application/json", produces = "application/json")
    public Medical_record createRecord(@RequestBody Medical_record newRecord){
        return medicalRecordRepository.save(newRecord);
    }

    @PostMapping(path = "/patient/create", consumes = "application/json", produces = "application/json")
    public Patient createPat(@RequestBody Patient newPatient){
        return patientRepository.save(newPatient);
    }


    //UPDATES:


    @PutMapping(path = "/patient/update")
    public Patient updateSPatient(@RequestBody Patient updatedPatient){
        return patientRepository.save(updatedPatient);
    }

    @PutMapping(path = "/specialty/update")
    public Specialty updateSpecialty(@RequestBody Specialty updatedSpecialty){
        return specialtyRepository.save(updatedSpecialty);
    }

    @PutMapping(path = "/record/update")
    public Medical_record updateRecord(@RequestBody Medical_record updatedRecord){
        return medicalRecordRepository.save(updatedRecord);
    }

//DELETE:

    @DeleteMapping(path = "/specialty/delete/{id_specialty}")
    public @ResponseBody
    Iterable<Specialty> deleteSpecialtyById(@PathVariable("id_specialty") int id_specialty){
        specialtyRepository.deleteById(id_specialty);
        return specialtyRepository.findAll();
    }



    @DeleteMapping(path = "/record/delete/{id_record}")
    public @ResponseBody
    Iterable<Medical_record> deleteRecordById(@PathVariable("id_record") int id_record){
        medicalRecordRepository.deleteById(id_record);
        return medicalRecordRepository.findAll();
    }

    @DeleteMapping(path = "/patient/delete/{id_patient}")
    public @ResponseBody
    Iterable<Patient> deletePatientById(@PathVariable("id_patient") int id_patient){
        patientRepository.deleteById(id_patient);
        return patientRepository.findAll();

    }
}
