package com.ajudasj.model.entity;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

import com.ajudasj.config.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity(name ="usuario")
@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id")

@EqualsAndHashCode(callSuper = true)
public class Usuario extends AbstractEntity{

	@Column(nullable = false)
	private String nome;

	@Column(nullable = false, length = 150, unique = true)
	private String email;
	
	@Column
	private String cidade;
	
	@Column
	private String estado;
	
	@Column(unique=true, length=11)
	private String ra;
	
	@Column(length=20)	
	private String senha;
	
	@OneToMany	
	private List <Materia> materias;
	
	@Column
	private String foto;
	
	@Column
	private boolean adm;	

}
