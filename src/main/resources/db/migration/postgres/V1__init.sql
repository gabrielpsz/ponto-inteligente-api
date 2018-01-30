CREATE TABLE empresa (
  id serial primary key,
  cnpj varchar(255) NOT NULL,
  data_atualizacao timestamp NOT NULL,
  data_criacao timestamp NOT NULL,
  razao_social varchar(255) NOT NULL
);

CREATE TABLE funcionario (
  id serial primary key,
  cpf varchar(255) NOT NULL,
  data_atualizacao timestamp NOT NULL,
  data_criacao timestamp NOT NULL,
  email varchar(255) NOT NULL,
  nome varchar(255) NOT NULL,
  perfil varchar(255) NOT NULL,
  qtd_horas_almoco float DEFAULT NULL,
  qtd_horas_trabalho_dia float DEFAULT NULL,
  senha varchar(255) NOT NULL,
  valor_hora NUMERIC(19,2) DEFAULT NULL,
  empresa_id integer DEFAULT NULL
);

CREATE TABLE lancamento (
  id serial primary key,
  data timestamp NOT NULL,
  data_atualizacao timestamp NOT NULL,
  data_criacao timestamp NOT NULL,
  descricao varchar(255) DEFAULT NULL,
  localizacao varchar(255) DEFAULT NULL,
  tipo varchar(255) NOT NULL,
  funcionario_id integer DEFAULT NULL
);

alter table funcionario add constraint fk_empresa foreign key (empresa_id) references empresa;

alter table lancamento add constraint fk_funcionario foreign key (funcionario_id) references funcionario;
		