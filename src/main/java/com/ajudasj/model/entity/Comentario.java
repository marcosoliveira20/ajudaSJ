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

public class Comentario extends AbstractEntity {
	@Column(name = "nome", nullable = false, length = 150)
	private String nome;
	
	@Column(name = "texto", nullable = false)
	private String texto;
}
