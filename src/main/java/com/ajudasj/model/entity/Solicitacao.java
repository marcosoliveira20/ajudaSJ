package com.ajudasj.model.entity;

import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name="solicitacao")
@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id")

public class Solicitacao {
	
	@Column(name="fk_andamento")
	private Andamento andamento;
	
	@Column(name="aluno_id",nullable=false)
	private Usuario aluno;
	
	@Column(name="professor_id",nullable=false)
	private Usuario professor;
	
	@Column(name="cod_materia")
	private int codMateria;
	
	@Column(nullable= false, length=250)
	private String local;
	
	//SimpleDateFormat sdf = new SimpleDateFormat ( " HH : mm: ss" );
	@Column(name="hora_inicio", nullable=false)
	private SimpleDateFormat horaInicio;
	
	@Column(name="hora_final", nullable=false)
	private SimpleDateFormat horaFinal;
	
	@Column(name="data_realizacao", nullable=false)
	private LocalDate dataRealizacao; 
	

}
