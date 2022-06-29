CREATE TABLE IF NOT EXISTS public.consulta
(
    id integer NOT NULL DEFAULT nextval('consulta_id_seq'::regclass),
    data_consulta date NOT NULL,
    id_medico integer NOT NULL,
    id_paciente integer NOT NULL,
    id_receita integer NOT NULL,
    CONSTRAINT consulta_pkey PRIMARY KEY (id),
    CONSTRAINT fk_medico_to_consulta FOREIGN KEY (id_medico)
        REFERENCES public.medico (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_paciente_to_consulta FOREIGN KEY (id_paciente)
        REFERENCES public.paciente (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_receita_to_consulta FOREIGN KEY (id_receita)
        REFERENCES public.receita (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.consulta
    OWNER to postgres;

-----

CREATE TABLE IF NOT EXISTS public.consultorio
(
    id integer NOT NULL DEFAULT nextval('consultorio_id_seq'::regclass),
    andar numeric(3,0) NOT NULL,
    id_especializacao integer NOT NULL,
    CONSTRAINT consultorio_pkey PRIMARY KEY (id),
    CONSTRAINT fk_especializacao_to_consultorio FOREIGN KEY (id_especializacao)
        REFERENCES public.especializacao (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.consultorio
    OWNER to postgres;

------

CREATE TABLE IF NOT EXISTS public.endereco
(
    id integer NOT NULL DEFAULT nextval('endereco_id_seq'::regclass),
    endereco character varying(200) COLLATE pg_catalog."default" NOT NULL,
    numero character varying(10) COLLATE pg_catalog."default" NOT NULL,
    cep numeric(8,0) NOT NULL,
    cidade character varying(50) COLLATE pg_catalog."default" NOT NULL,
    uf character varying(2) COLLATE pg_catalog."default" NOT NULL,
    pais character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT endereco_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.endereco
    OWNER to postgres;

-------

CREATE TABLE IF NOT EXISTS public.especializacao
(
    id integer NOT NULL DEFAULT nextval('especializacao_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT especializacao_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.especializacao
    OWNER to postgres;

-------
CREATE TABLE IF NOT EXISTS public.medico
(
    id integer NOT NULL DEFAULT nextval('medico_id_seq'::regclass),
    nome character varying(200) COLLATE pg_catalog."default" NOT NULL,
    crm numeric(10,0) NOT NULL,
    id_especializacao integer NOT NULL,
    id_consultorio integer NOT NULL,
    CONSTRAINT medico_pkey PRIMARY KEY (id),
    CONSTRAINT fk_consultorio_to_medico FOREIGN KEY (id_consultorio)
        REFERENCES public.consultorio (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_especializacao_to_medico FOREIGN KEY (id_especializacao)
        REFERENCES public.especializacao (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.medico
    OWNER to postgres;

------

CREATE TABLE IF NOT EXISTS public.paciente
(
    id integer NOT NULL DEFAULT nextval('paciente_id_seq'::regclass),
    cpf numeric(14,0) NOT NULL,
    rg numeric(12,0),
    nome character varying(200) COLLATE pg_catalog."default" NOT NULL,
    sexo character varying(15) COLLATE pg_catalog."default",
    data_nascimento date NOT NULL,
    tipo_sanguineo character varying(10) COLLATE pg_catalog."default",
    doador_orgaos boolean NOT NULL,
    email character varying(200) COLLATE pg_catalog."default" NOT NULL,
    telefone numeric(15,0) NOT NULL,
    id_endereco integer NOT NULL,
    CONSTRAINT paciente_pkey PRIMARY KEY (id),
    CONSTRAINT paciente_cpf_key UNIQUE (cpf),
    CONSTRAINT fk_endereco_to_paciente FOREIGN KEY (id_endereco)
        REFERENCES public.endereco (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.paciente
    OWNER to postgres;

-------
CREATE TABLE IF NOT EXISTS public.receita
(
    id integer NOT NULL DEFAULT nextval('receita_id_seq'::regclass),
    id_remedio integer NOT NULL,
    CONSTRAINT receita_pkey PRIMARY KEY (id),
    CONSTRAINT fk_remedios_to_receita FOREIGN KEY (id_remedio)
        REFERENCES public.remedios (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.receita
    OWNER to postgres;

------

CREATE TABLE IF NOT EXISTS public.remedios
(
    id integer NOT NULL DEFAULT nextval('remedios_id_seq'::regclass),
    nome character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT remedios_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.remedios
    OWNER to postgres;
