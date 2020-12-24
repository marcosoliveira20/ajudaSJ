package com.ajudasj.model.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

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
public class Noticia  extends AbstractEntity {
	
	@Column(name="foto", unique = true, nullable = false)
	private String  foto;

	@Column(nullable = false, length = 1000)
	private String descricao;
	
	@Column(name="pre_descricao",nullable = false, length = 250)
	private String preDescricao;
	
	@Column(nullable = false, length = 50)
	private String titulo;
	
	@Column(name="pre_titulo", nullable = false, length = 20)
	private String preTitulo;
	
	@Column(nullable = false)
	private String texto;
	
	@Column(nullable = false)
	private boolean excluida;
	
	@Column(nullable = false)
	private Usuario criador;
	
	@OneToMany
	private List<Comentario> comentarios;
}
