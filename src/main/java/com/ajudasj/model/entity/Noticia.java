package com.ajudasj.model.entity;

import java.util.List;

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

	@Column(name="descricao", unique = true, nullable = false)
	private String descricao;
	
	@Column(name="titulo", unique = true, nullable = false)
	private String titulo;
	
	@Column(name="texto", unique = true, nullable = false)
	private String texto;
	
	@Column(name="excluida", unique = true, nullable = false)
	private boolean excluida;
	
	@Column(name="criador", unique = true, nullable = false)
	private Usuario criador;
	
	@OneToMany(mappedBy = "fkNoticia" )
	@JoinColumn(name = "fk_noticia", referencedColumnName = "id")
	private List<Comentario> comentarios;
}
