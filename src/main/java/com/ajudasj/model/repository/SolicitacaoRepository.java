package com.ajudasj.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajudasj.model.entity.Solicitacao;

@Repository
public interface SolicitacaoRepository extends JpaRepository <Solicitacao, Integer> {

}
