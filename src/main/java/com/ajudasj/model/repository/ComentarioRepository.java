package com.ajudasj.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajudasj.model.entity.Comentario;

@Repository
public interface ComentarioRepository extends JpaRepository <Comentario, Integer> {

}
