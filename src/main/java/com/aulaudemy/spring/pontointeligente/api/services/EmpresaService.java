package com.aulaudemy.spring.pontointeligente.api.services;

import java.util.Optional;

import com.aulaudemy.spring.pontointeligente.api.entities.Empresa;

public interface EmpresaService {
	
	Optional<Empresa> buscarPorCnpj(String cnpj);
	
	Empresa persistir(Empresa empresa);

}
