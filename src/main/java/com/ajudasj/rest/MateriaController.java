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

import com.ajudasj.model.entity.Materia;
import com.ajudasj.model.repository.MateriaRepository;

@RestController
@RequestMapping("/api/materias")
public class MateriaController {
	private final MateriaRepository repository;
	
	@Autowired
	public MateriaController(MateriaRepository repository) {
		this.repository = repository;
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public  Materia salvar (@RequestBody Materia materia) {
		try {	
			return repository.save(materia);
					
		}catch(Exception e) {
			throw new ResponseStatusException( HttpStatus.BAD_REQUEST, "Usuário já cadastrado" );
		}
	}
	
	@GetMapping("{id}")
	public Materia encontrarPorId(@PathVariable Integer id) {
		return repository.findById(id).orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Materia não encontrado!"));
		
	}
	
	@DeleteMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar (@PathVariable Integer id) {
		repository.findById(id)
		.map( materia -> {
			repository.delete(materia);
			return Void.TYPE;
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Materia não encontrado!"));
	}
	
	@PutMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void atualizar(@PathVariable Integer id, @RequestBody  Materia materiaAtualizado ) {
		
		repository.findById(id)
		.map( materia -> {
			materiaAtualizado.setId(materia.getId());
			return repository.save(materiaAtualizado);
			
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Materia não encontrado!"));
	}

}
