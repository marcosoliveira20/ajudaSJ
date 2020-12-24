package com.ajudasj.model.entity;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

import com.ajudasj.config.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@AllArgsConstructor
@Entity(name="solicitacao")
@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id")

public class Solicitacao extends AbstractEntity {
	@OneToOne(cascade = CascadeType.ALL)	
	private Usuario aluno;
	
	@OneToOne(cascade = CascadeType.ALL)	
	private Usuario professor;
	
	@Column(name="fk_materia")
	private int codMateria;
	
	@OneToOne
	private Status status;
	
	@Column(nullable= false, length=250)
	private String local;
	
	@Column(name="hora_inicio", nullable=false)
	private String horaInicio;
	
	@Column(name="hora_final", nullable=false)
	private String horaFinal;
	
	@Column(name="data_realizacao", nullable=false)
	private LocalDate dataRealizacao; 
	

}
