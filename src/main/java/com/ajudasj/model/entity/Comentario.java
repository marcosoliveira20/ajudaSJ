package com.ajudasj.model.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.ajudasj.config.AbstractEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


@SuppressWarnings("serial")
@EqualsAndHashCode(callSuper = true)
@Entity(name="comentario")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Comentario extends AbstractEntity {
	

	@OneToOne
	private Usuario usuario;
	
	@Column
	private String texto;
}
