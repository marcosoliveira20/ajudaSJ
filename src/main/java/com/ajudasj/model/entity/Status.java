package com.ajudasj.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.ajudasj.config.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity(name ="status")
@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id")

@EqualsAndHashCode(callSuper = true)
public class Status extends AbstractEntity{

	@Column
	String nome; 
	
}
