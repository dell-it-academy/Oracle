CREATE TABLE hospital_medicos(
    crm     char(25)     PRIMARY KEY,
    nome    varchar(100)    NOT NULL,
    esp     varchar(100)     NOT NULL
);
CREATE TABLE hospital_pacientes(
    cpf     char(15)     PRIMARY KEY,
    nome    varchar(100)    NOT NULL,
    dtnasc  DATE            NOT NULL
);

CREATE TABLE hospital_medicos_pacientes(
    crm char(25) NOT NULL,
    cpf char(15) NOT NULL,
    
    CONSTRAINT fk_med FOREIGN KEY (crm)
    REFERENCES hospital_medicos (crm),
    
    CONSTRAINT fk_pac FOREIGN KEY (cpf)
    REFERENCES hospital_pacientes (cpf),
    
    CONSTRAINT pk_med_pac PRIMARY KEY (crm, cpf)
);