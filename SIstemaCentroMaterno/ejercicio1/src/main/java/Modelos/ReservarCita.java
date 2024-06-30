package Modelos;

import java.sql.Date;

public class ReservarCita {

    private int id_rc;
    private String nombre_rc;
    private String apellido_rc;
    private String dni_rc;
    private Date fecha_nacimiento_rc;
    private String numero_celular_rc;
    private String especialidad_rc;
    private String medico_rc;
    private String detalle_rc;
    private String estado_rc;
    private Date fecha_cita_rc;
    private String turno_rc;
    private int paciente_id;

    public int getId_rc() {
        return id_rc;
    }

    public void setId_rc(int id_rc) {
        this.id_rc = id_rc;
    }

    public String getNombre_rc() {
        return nombre_rc;
    }

    public void setNombre_rc(String nombre_rc) {
        this.nombre_rc = nombre_rc;
    }

    public String getApellido_rc() {
        return apellido_rc;
    }

    public void setApellido_rc(String apellido_rc) {
        this.apellido_rc = apellido_rc;
    }

    public String getDni_rc() {
        return dni_rc;
    }

    public void setDni_rc(String dni_rc) {
        this.dni_rc = dni_rc;
    }

    public Date getFecha_nacimiento_rc() {
        return fecha_nacimiento_rc;
    }

    public void setFecha_nacimiento_rc(Date fecha_nacimiento_rc) {
        this.fecha_nacimiento_rc = fecha_nacimiento_rc;
    }

    public String getNumero_celular_rc() {
        return numero_celular_rc;
    }

    public void setNumero_celular_rc(String numero_celular_rc) {
        this.numero_celular_rc = numero_celular_rc;
    }

    public String getEspecialidad_rc() {
        return especialidad_rc;
    }

    public void setEspecialidad_rc(String especialidad_rc) {
        this.especialidad_rc = especialidad_rc;
    }

    public String getMedico_rc() {
        return medico_rc;
    }

    public void setMedico_rc(String medico_rc) {
        this.medico_rc = medico_rc;
    }

    public String getDetalle_rc() {
        return detalle_rc;
    }

    public void setDetalle_rc(String detalle_rc) {
        this.detalle_rc = detalle_rc;
    }

    public String getEstado_rc() {
        return estado_rc;
    }

    public void setEstado_rc(String estado_rc) {
        this.estado_rc = estado_rc;
    }

    public Date getFecha_cita_rc() {
        return fecha_cita_rc;
    }

    public void setFecha_cita_rc(Date fecha_cita_rc) {
        this.fecha_cita_rc = fecha_cita_rc;
    }

    public String getTurno_rc() {
        return turno_rc;
    }

    public void setTurno_rc(String turno_rc) {
        this.turno_rc = turno_rc;
    }

    public int getPaciente_id() {
        return paciente_id;
    }

    public void setPaciente_id(int paciente_id) {
        this.paciente_id = paciente_id;
    }

    
}
