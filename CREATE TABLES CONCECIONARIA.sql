CREATE TABLE zdell_pessoas (
    cpf     varchar(15) NOT NULL PRIMARY KEY,
    nome    varchar(100) NOT NULL,
    idade   number(3) NULL,
    email   varchar(150) NULL,
    
    CONSTRAINT ck_idade CHECK (idade >= 18)
);

CREATE TABLE zdell_placa(
    id varchar(7) NOT NULL PRIMARY KEY,
    pais varchar(100) NOT NULL
);

CREATE TABLE zdell_veiculos(
    renavam varchar(9) NOT NULL PRIMARY KEY,
    placa   varchar(7) NULL,
    km      number(8,1) NOT NULL, --9999999.9
    marca   varchar(50) NOT NULL,
    modelo  varchar(50) NOT NULL,
    ano     date NOT NULL,
    
    CONSTRAINT fk_Placa FOREIGN KEY (placa)
    REFERENCES zdell_placa (id)
);

