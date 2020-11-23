package com.ajudasj.rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.ajudasj.model.entity.Solicitacao;
import com.ajudasj.model.repository.SolicitacaoRepository;


@RestController
@RequestMapping("/api/solicitacoes")
public class SolicitacaoController {

	private final SolicitacaoRepository repository;
	
	@Autowired
	public SolicitacaoController(SolicitacaoRepository repository) {
		this.repository = repository;
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public  Solicitacao salvar (@RequestBody Solicitacao solicitacao) {
		try {	
			return repository.save(solicitacao);
					
		}catch(Exception e) {
			throw new ResponseStatusException( HttpStatus.BAD_REQUEST, "Usuário já cadastrado" );
		}
	}
	
	@GetMapping("{id}")
	public Solicitacao encontrarPorId(@PathVariable Integer id) {
		return repository.findById(id).orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Solicitacao não encontrado!"));
		
	}
	
	@DeleteMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar (@PathVariable Integer id) {
		repository.findById(id)
		.map( solicitacao -> {
			repository.delete(solicitacao);
			return Void.TYPE;
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Solicitacao não encontrado!"));
	}
	
	@PutMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void atualizar(@PathVariable Integer id, @RequestBody  Solicitacao solicitacaoAtualizado ) {
		
		repository.findById(id)
		.map( solicitacao -> {
			solicitacaoAtualizado.setId(solicitacao.getId());
			return repository.save(solicitacaoAtualizado);
			 
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Solicitacao não encontrado!"));
	}

}
