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
@Entity(name="noticia")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Materia extends AbstractEntity {
	
	@Column(name = "nome", nullable = false, length = 150)
	private String nome;
	
	@Column(name = "descricao", nullable = false, length = 400)
	private String descricao;


}
