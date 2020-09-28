package com.ajudasj.model.entity;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.ajudasj.config.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity(name ="usuario")
@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id")

@EqualsAndHashCode(callSuper = true)
public class Usuario extends AbstractEntity{

	@Column(name = "nome", nullable = false, length = 150)
	private String nome;

	@Column(name="email", nullable = false, length = 150, unique = true)
	private String email;
	
	@Column(name="cidade", nullable=false)
	private String cidade;
	
	@Column(name="cidade", nullable=false)	
	private String estado;
	
	@Column(name="ra", nullable=false, unique=true, length=11)
	private String ra;
	
	@Column(name="ra", nullable=false, unique=true, length=20)	
	private String senha;
	
	@Column(name="cod_materia")
	private List <Materia> materias;
	
	@Column(name="foto")
	private String foto;
	
	@Column(name="adm")
	private boolean adm;	

}
