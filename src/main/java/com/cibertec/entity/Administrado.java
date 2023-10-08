package com.cibertec.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name="administrado")
public class Administrado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAdmi;
	private String nombre;
	private String apellido;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern =  "yyyy-MM-dd")
	private Date fechanac;
	private String genero;
	private int telefono;
	private String correo;

}
