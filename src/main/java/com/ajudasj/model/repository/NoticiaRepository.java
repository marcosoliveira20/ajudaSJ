package com.ajudasj.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajudasj.model.entity.Noticia;

@Repository
public interface NoticiaRepository extends JpaRepository <Noticia, Integer> {

}
