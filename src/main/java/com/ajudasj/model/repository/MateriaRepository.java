package com.ajudasj.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajudasj.model.entity.Materia;

@Repository
public interface MateriaRepository extends JpaRepository <Materia, Integer> {

}
