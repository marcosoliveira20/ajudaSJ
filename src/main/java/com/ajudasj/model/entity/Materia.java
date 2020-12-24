package com.ajudasj.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.ajudasj.config.AbstractEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


@SuppressWarnings("serial")
@EqualsAndHashCode(callSuper = true)
@Entity(name="materia")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Materia extends AbstractEntity {
	
	@Column(nullable = false, length = 150)
	private String nome;
	
	@Column(nullable = false, length = 1000)
	private String descricao;


}
