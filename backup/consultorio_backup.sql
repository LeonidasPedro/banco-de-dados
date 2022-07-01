--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-1.pgdg22.04+1)

-- Started on 2022-07-01 17:55:43 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 17054)
-- Name: consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consulta (
    id integer NOT NULL,
    data_consulta date NOT NULL,
    id_medico integer NOT NULL,
    id_paciente integer NOT NULL
);


ALTER TABLE public.consulta OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17053)
-- Name: consulta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consulta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consulta_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 223
-- Name: consulta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consulta_id_seq OWNED BY public.consulta.id;


--
-- TOC entry 220 (class 1259 OID 17025)
-- Name: consultorio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consultorio (
    id integer NOT NULL,
    andar numeric(3,0) NOT NULL,
    id_especializacao integer NOT NULL
);


ALTER TABLE public.consultorio OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17024)
-- Name: consultorio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consultorio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consultorio_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 219
-- Name: consultorio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consultorio_id_seq OWNED BY public.consultorio.id;


--
-- TOC entry 212 (class 1259 OID 16978)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    id integer NOT NULL,
    endereco character varying(200) NOT NULL,
    numero character varying(10) NOT NULL,
    cep numeric(8,0) NOT NULL,
    cidade character varying(50) NOT NULL,
    uf character varying(2) NOT NULL,
    pais character varying(50)
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16977)
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 211
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;


--
-- TOC entry 216 (class 1259 OID 16999)
-- Name: especializacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especializacao (
    id integer NOT NULL,
    nome character varying(100)
);


ALTER TABLE public.especializacao OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16998)
-- Name: especializacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.especializacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.especializacao_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 215
-- Name: especializacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.especializacao_id_seq OWNED BY public.especializacao.id;


--
-- TOC entry 222 (class 1259 OID 17037)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medico (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
    crm numeric(10,0) NOT NULL,
    id_especializacao integer NOT NULL,
    id_consultorio integer NOT NULL
);


ALTER TABLE public.medico OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17036)
-- Name: medico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medico_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 221
-- Name: medico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medico_id_seq OWNED BY public.medico.id;


--
-- TOC entry 214 (class 1259 OID 16985)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paciente (
    id integer NOT NULL,
    cpf character varying(14) NOT NULL,
    rg character varying(12),
    nome character varying(200) NOT NULL,
    sexo character varying(15),
    data_nascimento date NOT NULL,
    tipo_sanguineo character varying(10),
    doador_orgaos boolean DEFAULT false NOT NULL,
    email character varying(200) NOT NULL,
    telefone character varying(16) NOT NULL,
    id_endereco integer NOT NULL
);


ALTER TABLE public.paciente OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16984)
-- Name: paciente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paciente_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 213
-- Name: paciente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paciente_id_seq OWNED BY public.paciente.id;


--
-- TOC entry 218 (class 1259 OID 17013)
-- Name: receita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receita (
    id integer NOT NULL,
    id_consulta integer NOT NULL
);


ALTER TABLE public.receita OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17012)
-- Name: receita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receita_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 217
-- Name: receita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receita_id_seq OWNED BY public.receita.id;


--
-- TOC entry 228 (class 1259 OID 17133)
-- Name: receita_remedios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receita_remedios (
    id integer NOT NULL,
    id_receita integer NOT NULL,
    id_remedios integer NOT NULL
);


ALTER TABLE public.receita_remedios OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17132)
-- Name: receita_remedios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receita_remedios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receita_remedios_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 227
-- Name: receita_remedios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receita_remedios_id_seq OWNED BY public.receita_remedios.id;


--
-- TOC entry 210 (class 1259 OID 16971)
-- Name: remedios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remedios (
    id integer NOT NULL,
    nome character varying(200) NOT NULL
);


ALTER TABLE public.remedios OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16970)
-- Name: remedios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.remedios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remedios_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 209
-- Name: remedios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.remedios_id_seq OWNED BY public.remedios.id;


--
-- TOC entry 231 (class 1259 OID 17166)
-- Name: vw_aniversariantes_hoje; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_aniversariantes_hoje AS
 SELECT paciente.nome,
    paciente.sexo,
    paciente.email,
    paciente.telefone
   FROM public.paciente
  WHERE ((EXTRACT(day FROM paciente.data_nascimento) = EXTRACT(day FROM now())) AND (EXTRACT(month FROM paciente.data_nascimento) = EXTRACT(month FROM now())));


ALTER TABLE public.vw_aniversariantes_hoje OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17105)
-- Name: vw_consultas_medico_4; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_consultas_medico_4 AS
 SELECT consulta.id,
    consulta.data_consulta,
    consulta.id_paciente
   FROM public.consulta
  WHERE (consulta.id_medico = 4);


ALTER TABLE public.vw_consultas_medico_4 OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17109)
-- Name: vw_pacientes_cardiologia; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_pacientes_cardiologia AS
 SELECT p.nome,
    p.telefone,
    p.email,
    p.sexo,
    m.nome AS medico
   FROM (((public.consulta c
     JOIN public.medico m ON ((c.id_medico = m.id)))
     JOIN public.especializacao e ON ((m.id_especializacao = e.id)))
     JOIN public.paciente p ON ((c.id_paciente = p.id)))
  WHERE ((e.nome)::text = 'cardiologia'::text);


ALTER TABLE public.vw_pacientes_cardiologia OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17155)
-- Name: vw_pacientes_usuarios_enzalutamida; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_pacientes_usuarios_enzalutamida AS
 SELECT p.nome,
    p.sexo,
    p.data_nascimento,
    p.telefone
   FROM ((((public.receita r
     JOIN public.consulta c ON ((r.id_consulta = c.id)))
     JOIN public.receita_remedios rm ON ((r.id = rm.id_receita)))
     JOIN public.remedios re ON ((rm.id_remedios = re.id)))
     JOIN public.paciente p ON ((c.id_paciente = p.id)))
  WHERE ((re.nome)::text = 'Enzalutamida'::text);


ALTER TABLE public.vw_pacientes_usuarios_enzalutamida OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17160)
-- Name: vw_tipo_sanguineo_o_positivo; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_tipo_sanguineo_o_positivo AS
 SELECT p.nome AS paciente,
    p.sexo,
    p.data_nascimento,
    p.email,
    p.telefone,
    m.nome AS nome_medico
   FROM ((public.consulta c
     JOIN public.paciente p ON ((c.id_paciente = p.id)))
     JOIN public.medico m ON ((c.id_medico = m.id)))
  WHERE (((p.tipo_sanguineo)::text = 'O+'::text) AND (p.doador_orgaos = true))
  GROUP BY p.nome, m.nome, p.telefone, p.email, p.data_nascimento, p.sexo;


ALTER TABLE public.vw_tipo_sanguineo_o_positivo OWNER TO postgres;

--
-- TOC entry 3277 (class 2604 OID 17057)
-- Name: consulta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta ALTER COLUMN id SET DEFAULT nextval('public.consulta_id_seq'::regclass);


--
-- TOC entry 3275 (class 2604 OID 17028)
-- Name: consultorio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultorio ALTER COLUMN id SET DEFAULT nextval('public.consultorio_id_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 16981)
-- Name: endereco id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 17002)
-- Name: especializacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especializacao ALTER COLUMN id SET DEFAULT nextval('public.especializacao_id_seq'::regclass);


--
-- TOC entry 3276 (class 2604 OID 17040)
-- Name: medico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico ALTER COLUMN id SET DEFAULT nextval('public.medico_id_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 16988)
-- Name: paciente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente ALTER COLUMN id SET DEFAULT nextval('public.paciente_id_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 17016)
-- Name: receita id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita ALTER COLUMN id SET DEFAULT nextval('public.receita_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 17136)
-- Name: receita_remedios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita_remedios ALTER COLUMN id SET DEFAULT nextval('public.receita_remedios_id_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 16974)
-- Name: remedios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remedios ALTER COLUMN id SET DEFAULT nextval('public.remedios_id_seq'::regclass);


--
-- TOC entry 3467 (class 0 OID 17054)
-- Dependencies: 224
-- Data for Name: consulta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.consulta VALUES (6, '2022-03-05', 1, 4);
INSERT INTO public.consulta VALUES (7, '2022-03-07', 2, 7);
INSERT INTO public.consulta VALUES (8, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (10, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (12, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (14, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (15, '2022-03-08', 1, 3);
INSERT INTO public.consulta VALUES (16, '2022-03-08', 2, 4);
INSERT INTO public.consulta VALUES (17, '2022-03-08', 2, 5);
INSERT INTO public.consulta VALUES (18, '2022-03-08', 2, 6);
INSERT INTO public.consulta VALUES (19, '2022-03-08', 1, 7);
INSERT INTO public.consulta VALUES (20, '2022-03-08', 1, 8);
INSERT INTO public.consulta VALUES (21, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (22, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (23, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (24, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (25, '2022-03-08', 1, 3);
INSERT INTO public.consulta VALUES (26, '2022-03-08', 2, 4);
INSERT INTO public.consulta VALUES (27, '2022-03-08', 2, 5);
INSERT INTO public.consulta VALUES (28, '2022-03-08', 2, 6);
INSERT INTO public.consulta VALUES (29, '2022-03-08', 1, 7);
INSERT INTO public.consulta VALUES (30, '2022-03-08', 1, 8);
INSERT INTO public.consulta VALUES (31, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (32, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (33, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (34, '2022-03-08', 4, 6);
INSERT INTO public.consulta VALUES (35, '2022-03-08', 1, 3);
INSERT INTO public.consulta VALUES (36, '2022-03-08', 2, 4);
INSERT INTO public.consulta VALUES (37, '2022-03-08', 2, 5);
INSERT INTO public.consulta VALUES (38, '2022-03-08', 2, 6);
INSERT INTO public.consulta VALUES (39, '2022-03-08', 1, 7);
INSERT INTO public.consulta VALUES (40, '2022-03-08', 1, 8);
INSERT INTO public.consulta VALUES (41, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (42, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (43, '2022-03-08', 4, 3);
INSERT INTO public.consulta VALUES (44, '2023-03-08', 4, 6);
INSERT INTO public.consulta VALUES (45, '2023-03-08', 1, 3);
INSERT INTO public.consulta VALUES (46, '2023-03-08', 2, 4);
INSERT INTO public.consulta VALUES (47, '2023-03-08', 2, 5);
INSERT INTO public.consulta VALUES (48, '2023-03-08', 2, 6);
INSERT INTO public.consulta VALUES (49, '2023-03-08', 1, 7);
INSERT INTO public.consulta VALUES (50, '2023-03-08', 1, 8);
INSERT INTO public.consulta VALUES (51, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (52, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (53, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (54, '2023-03-08', 4, 6);
INSERT INTO public.consulta VALUES (55, '2023-03-08', 1, 3);
INSERT INTO public.consulta VALUES (56, '2023-03-08', 2, 4);
INSERT INTO public.consulta VALUES (57, '2023-03-08', 2, 5);
INSERT INTO public.consulta VALUES (58, '2023-03-08', 2, 6);
INSERT INTO public.consulta VALUES (59, '2023-03-08', 1, 7);
INSERT INTO public.consulta VALUES (60, '2023-03-08', 1, 8);
INSERT INTO public.consulta VALUES (61, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (62, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (63, '2023-03-08', 4, 3);
INSERT INTO public.consulta VALUES (64, '2022-06-30', 4, 6);
INSERT INTO public.consulta VALUES (65, '2022-06-30', 1, 3);
INSERT INTO public.consulta VALUES (66, '2022-06-30', 2, 4);
INSERT INTO public.consulta VALUES (67, '2022-06-30', 2, 5);
INSERT INTO public.consulta VALUES (68, '2022-06-30', 2, 6);
INSERT INTO public.consulta VALUES (69, '2022-06-30', 1, 7);
INSERT INTO public.consulta VALUES (70, '2022-06-30', 1, 8);
INSERT INTO public.consulta VALUES (71, '2022-06-30', 4, 3);
INSERT INTO public.consulta VALUES (72, '2022-06-30', 4, 3);
INSERT INTO public.consulta VALUES (73, '2022-06-30', 4, 3);
INSERT INTO public.consulta VALUES (74, '2022-07-01', 4, 7);
INSERT INTO public.consulta VALUES (75, '2022-07-01', 4, 8);
INSERT INTO public.consulta VALUES (76, '2022-07-01', 4, 9);
INSERT INTO public.consulta VALUES (77, '2022-07-01', 4, 10);
INSERT INTO public.consulta VALUES (78, '2022-07-01', 4, 11);
INSERT INTO public.consulta VALUES (79, '2022-07-01', 5, 8);
INSERT INTO public.consulta VALUES (80, '2022-07-01', 5, 9);
INSERT INTO public.consulta VALUES (81, '2022-07-01', 5, 10);
INSERT INTO public.consulta VALUES (82, '2022-07-01', 5, 11);
INSERT INTO public.consulta VALUES (83, '2022-07-01', 4, 7);
INSERT INTO public.consulta VALUES (84, '2022-07-01', 4, 8);
INSERT INTO public.consulta VALUES (85, '2022-07-01', 4, 9);
INSERT INTO public.consulta VALUES (86, '2022-07-01', 4, 10);
INSERT INTO public.consulta VALUES (87, '2022-07-01', 4, 11);
INSERT INTO public.consulta VALUES (88, '2022-07-01', 5, 8);
INSERT INTO public.consulta VALUES (89, '2022-07-01', 5, 9);
INSERT INTO public.consulta VALUES (90, '2022-07-01', 5, 10);
INSERT INTO public.consulta VALUES (91, '2022-07-01', 5, 11);


--
-- TOC entry 3463 (class 0 OID 17025)
-- Dependencies: 220
-- Data for Name: consultorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.consultorio VALUES (1, 1, 1);
INSERT INTO public.consultorio VALUES (2, 1, 2);
INSERT INTO public.consultorio VALUES (3, 1, 3);
INSERT INTO public.consultorio VALUES (4, 2, 4);
INSERT INTO public.consultorio VALUES (5, 2, 5);


--
-- TOC entry 3455 (class 0 OID 16978)
-- Dependencies: 212
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.endereco VALUES (1, 'Rua 10 de Junho', '594', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (2, 'Rua 10 de Junho', '594', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (3, 'Rua Betim', '594', 76114, 'Ji-Paraná', 'RO', 'Brasil');
INSERT INTO public.endereco VALUES (4, 'Rua Arenito', '4569', 35633, 'Itabira', 'MG', 'Brasil');
INSERT INTO public.endereco VALUES (5, 'Rua Rayaq', '724', 69941, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (6, 'Rua Maria Luíza Conceição Silva', '9837', 69901, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (7, 'Rua das Limeira', '5974', 69811, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (8, 'Rua 10 de Junho', '5794', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (9, 'Rua Professor Cristiano Fischer', '594', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (10, 'Rua José Faustino', '6594', 69611, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (11, 'Rua Louveira', '5954', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (12, 'Avenida Venezuela', '5394', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (13, 'Chácara Chácara 16', '5924', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (14, 'Praça Coronel Artur Feijó Benevides', '594', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (15, 'Rua Julia Bezerra de Menezes', '5194', 69711, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (16, 'Rua H-3', '5094', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (17, 'Rua Potengi', '5994', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (18, 'Rua Áustria', '8594', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (19, 'Travessa José B. da Silva', '594', 69711, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (20, 'Rua Potengi', '5964', 69031, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (21, 'Beco dos Amigos', '5494', 69621, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (22, 'Bloco Quinze', '5964', 69631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (23, 'Rua Antonio Melado', '5594', 89631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (24, 'Rua Elesbão Luz', '5394', 69531, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (25, 'Rua Potengi', '594', 89631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (26, 'Rua Eunice Souza Cruz', '5934', 68631, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (27, 'Rua Pescada', '594', 69531, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (28, 'Travessa Pedra da Marca', '5394', 69531, 'Rio Branco', 'AC', 'Brasil');
INSERT INTO public.endereco VALUES (29, 'Rua Valtair de Oliveira Hoefling', '5943', 69711, 'Rio Branco', 'AC', 'Brasil');


--
-- TOC entry 3459 (class 0 OID 16999)
-- Dependencies: 216
-- Data for Name: especializacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.especializacao VALUES (1, 'cardiologia');
INSERT INTO public.especializacao VALUES (2, 'pediatria');
INSERT INTO public.especializacao VALUES (3, 'neurologia');
INSERT INTO public.especializacao VALUES (4, 'gastroenterologia');
INSERT INTO public.especializacao VALUES (5, 'clinica geral');
INSERT INTO public.especializacao VALUES (6, 'ginecologia');


--
-- TOC entry 3465 (class 0 OID 17037)
-- Dependencies: 222
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medico VALUES (1, 'Thales Raimundo Tiago Pereira', 123654, 1, 1);
INSERT INTO public.medico VALUES (2, 'Sônia Isabela dos Santos', 156654, 2, 2);
INSERT INTO public.medico VALUES (3, 'Mariane Luciana Stefany Porto', 132454, 3, 4);
INSERT INTO public.medico VALUES (4, 'Eduardo Victor Aragão', 415154, 5, 3);
INSERT INTO public.medico VALUES (5, 'Clarice Andreia de Paula', 123654, 4, 5);


--
-- TOC entry 3457 (class 0 OID 16985)
-- Dependencies: 214
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.paciente VALUES (9, '283.105.944-53', '13.969.008-6', 'Kamilly Fabiana Assunção', 'Feminino', '1981-06-16', 'B+', false, 'kamilly_assuncao@academiaconcerto.art.br', '(11) 98914-0764', 7);
INSERT INTO public.paciente VALUES (12, '041.044.093-08', '32.222.291-6', 'Vera Carla Freitas', 'Feminino', '1944-03-16', 'B-', false, 'veracarlafreitas@vetech.vet.br', '(14) 99129-9133', 1);
INSERT INTO public.paciente VALUES (14, '021.325.075-62', '37.088.375-5', 'Arthur Guilherme Daniel Lopes', 'Masculino', '1998-02-18', 'A+', false, 'arthur.guilherme.lopes@thacconstrutora.com.br', '(69) 99801-4125', 8);
INSERT INTO public.paciente VALUES (18, '417.938.895-20', '35.121.959-6', 'Giovanna Sophia Cristiane Monteiro', 'Feminino', '2003-01-27', 'A+', false, 'giovanna.sophia.monteiro@balloons.com.br', '(84) 98824-9972', 4);
INSERT INTO public.paciente VALUES (20, '239.076.921-79', '42.558.059-3', 'Isabela Elza Alessandra da Rocha', 'Feminino', '1962-02-20', 'B-', false, 'isabela.elza.darocha@maorifilmes.com.br', '(95) 99398-6144', 2);
INSERT INTO public.paciente VALUES (22, '990.627.109-48', '27.663.554-1', 'Evelyn Elaine Antônia Rezende', 'Feminino', '1985-01-23', 'A+', false, 'evelyn-rezende89@ciaimoveissjc.com', '(92) 98411-0747', 2);
INSERT INTO public.paciente VALUES (26, '580.455.417-41', '26.669.659-4', 'Antonio Caio Yuri Cardoso', 'Masculino', '2002-01-08', 'B+', false, 'antonio.caio.cardoso@engineer.com', '(96) 99168-8194', 6);
INSERT INTO public.paciente VALUES (27, '971.692.956-01', '42.154.978-6', 'Andrea Daiane Antonella Porto', 'Feminino', '1952-05-02', 'B+', false, 'andrea-porto79@corp.inf.br', '(84) 99809-5932', 7);
INSERT INTO public.paciente VALUES (31, '587.395.167-50', '43.041.362-2', 'Isis Alana da Conceição', 'Feminino', '1991-03-15', 'A+', false, 'isis-daconceicao88@previeweventos.com.br', '(61) 98827-0017', 6);
INSERT INTO public.paciente VALUES (32, '678.913.978-80', '46.075.059-8', 'Murilo Nelson Ramos', 'Masculino', '1981-03-07', 'B+', false, 'murilo_nelson_ramos@arecocomercial.com.br', '(43) 99158-1719', 7);
INSERT INTO public.paciente VALUES (4, '466.929.979-41', '10.230.566-3', 'Sérgio Anthony Moraes', 'Masculino', '1944-03-07', 'A-', true, 'sergio_anthony_moraes@gm.com', '(86) 98976-9701', 2);
INSERT INTO public.paciente VALUES (11, '181.947.069-55', '23.590.845-9', 'Lavínia Tatiane Novaes', 'Feminino', '1960-03-27', 'A-', true, 'lavinia_novaes@alphacandies.com.br', '(66) 98602-5061', 9);
INSERT INTO public.paciente VALUES (15, '698.619.071-90', '26.858.961-6', 'Rosa Eliane Sophia Mendes', 'Feminino', '1956-03-18', 'A-', true, 'rosa.eliane.mendes@aichele.com.br', '(22) 99903-5254', 7);
INSERT INTO public.paciente VALUES (30, '312.670.540-50', '36.333.786-6', 'Victor Igor Nogueira', 'Masculino', '1963-05-22', 'A-', true, 'victorigornogueira@drimenezes.com', '(55) 99473-7847', 5);
INSERT INTO public.paciente VALUES (13, '120.144.609-06', '22.548.306-3', 'Rita Vanessa Manuela Barros', 'Feminino', '1982-05-13', 'AB-', true, 'rita_vanessa_barros@schon.com.br', '(65) 98733-7339', 9);
INSERT INTO public.paciente VALUES (3, '616.168.750-03', '12.631.415-9', 'Olivia Larissa Ester Moreira', 'Feminino', '1979-01-14', 'AB+', true, 'olivialarissamoreira@fundasa.com.br', '(91) 98755-9045', 1);
INSERT INTO public.paciente VALUES (6, '319.534.764-49', '46.333.833-9', 'Igor Jorge Moura', 'Masculino', '1949-06-15', 'AB+', true, 'igor_moura@mmarques.com', '(67) 98824-9974', 4);
INSERT INTO public.paciente VALUES (19, '006.118.108-08', '17.636.931-4', 'Thiago Pedro Bernardo da Costa', 'Masculino', '1985-03-14', 'AB+', true, 'thiagopedrodacosta@predilectasorocaba.com.br', '(68) 98862-5209', 3);
INSERT INTO public.paciente VALUES (23, '436.249.325-51', '10.568.368-1', 'Isabela Marina Tereza Almeida', 'Feminino', '1995-03-04', 'AB+', true, 'isabela_marina_almeida@ahlstrom.com', '(68) 98726-8006', 3);
INSERT INTO public.paciente VALUES (25, '565.964.076-16', '47.644.320-9', 'Rafael Roberto Gomes', 'Masculino', '1986-05-14', 'AB+', true, 'rafael-gomes92@hormail.com', '(67) 98470-2988', 5);
INSERT INTO public.paciente VALUES (7, '783.544.848-31', '12.349.315-8', 'Rafael Hugo Drumond', 'Masculino', '1964-03-08', 'O+', true, 'rafael_hugo_drumond@ymail.com', '(98) 99733-3710', 5);
INSERT INTO public.paciente VALUES (8, '387.274.698-75', '24.209.387-5', 'Thiago Matheus Vinicius Aragão', 'Masculino', '1985-06-05', 'O+', true, 'thiago.matheus.aragao@contabilidadelibra.com.br', '(61) 98893-5268', 6);
INSERT INTO public.paciente VALUES (10, '613.564.856-00', '16.837.161-3', 'Clara Nair Catarina Peixoto', 'Feminino', '2003-02-15', 'O+', true, 'claranairpeixoto@eclatt.com.br', '(71) 98547-0274', 8);
INSERT INTO public.paciente VALUES (16, '551.788.625-62', '27.059.261-1', 'Carlos Eduardo Lucca de Paula', 'Masculino', '1946-04-06', 'O+', true, 'carlos_eduardo_depaula@boiago.com.br', '(85) 99186-4094', 6);
INSERT INTO public.paciente VALUES (21, '179.684.958-81', '22.964.559-8', 'Rafaela Emily Evelyn Carvalho', 'Feminino', '1983-02-20', 'O+', true, 'rafaelaemilycarvalho@hotmnail.com', '(27) 99338-7774', 1);
INSERT INTO public.paciente VALUES (28, '456.382.167-58', '40.526.810-5', 'Jennifer Milena Fernandes', 'Feminino', '1959-02-01', 'O+', true, 'jennifer.milena.fernandes@tpltransportes.com.br', '(86) 98710-7998', 8);
INSERT INTO public.paciente VALUES (5, '519.100.575-92', '25.345.837-7', 'Joaquim Ian Gonçalves', 'Masculino', '1959-02-08', 'O-', true, 'joaquim_ian_goncalves@brasfrutmanaus.com.br', '(61) 98504-2245', 3);
INSERT INTO public.paciente VALUES (17, '210.834.602-34', '18.531.824-1', 'Cecília Maya Adriana Barbosa', 'Feminino', '1960-06-18', 'O-', true, 'cecilia.maya.barbosa@r7.com', '(85) 99661-9087', 5);
INSERT INTO public.paciente VALUES (24, '056.061.371-78', '31.554.009-6', 'Henry Thomas Gabriel Aparício', 'Masculino', '1982-01-05', 'O-', true, 'henry_thomas_aparicio@redacaofinal.com.br', '(62) 99948-1854', 4);
INSERT INTO public.paciente VALUES (29, '376.028.096-02', '34.204.573-8', 'Laura Carla Sophie Fogaça', 'Feminino', '1946-01-20', 'O-', true, 'laura-fogaca88@eccofibra.com.br', '(47) 99177-7554', 9);
INSERT INTO public.paciente VALUES (33, '493.130.314-50', '19.727.765-2', 'Tânia Sueli Isis Rocha', 'Feminino', '1989-07-01', 'O-', false, 'tania_rocha@tursi.com.br', '(61) 99840-0857', 8);


--
-- TOC entry 3461 (class 0 OID 17013)
-- Dependencies: 218
-- Data for Name: receita; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.receita VALUES (76, 8);
INSERT INTO public.receita VALUES (77, 14);
INSERT INTO public.receita VALUES (78, 22);
INSERT INTO public.receita VALUES (79, 6);
INSERT INTO public.receita VALUES (80, 7);
INSERT INTO public.receita VALUES (81, 15);
INSERT INTO public.receita VALUES (82, 17);
INSERT INTO public.receita VALUES (83, 18);


--
-- TOC entry 3469 (class 0 OID 17133)
-- Dependencies: 228
-- Data for Name: receita_remedios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.receita_remedios VALUES (10, 76, 6);
INSERT INTO public.receita_remedios VALUES (11, 76, 2);
INSERT INTO public.receita_remedios VALUES (12, 76, 5);
INSERT INTO public.receita_remedios VALUES (13, 76, 8);
INSERT INTO public.receita_remedios VALUES (14, 76, 10);
INSERT INTO public.receita_remedios VALUES (15, 77, 5);
INSERT INTO public.receita_remedios VALUES (16, 77, 8);
INSERT INTO public.receita_remedios VALUES (17, 78, 10);
INSERT INTO public.receita_remedios VALUES (18, 78, 8);
INSERT INTO public.receita_remedios VALUES (19, 76, 6);
INSERT INTO public.receita_remedios VALUES (20, 79, 2);
INSERT INTO public.receita_remedios VALUES (21, 79, 5);
INSERT INTO public.receita_remedios VALUES (22, 80, 8);
INSERT INTO public.receita_remedios VALUES (23, 80, 10);
INSERT INTO public.receita_remedios VALUES (24, 81, 5);
INSERT INTO public.receita_remedios VALUES (25, 81, 8);
INSERT INTO public.receita_remedios VALUES (26, 82, 10);
INSERT INTO public.receita_remedios VALUES (27, 82, 8);


--
-- TOC entry 3453 (class 0 OID 16971)
-- Dependencies: 210
-- Data for Name: remedios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.remedios VALUES (1, 'Rivotril');
INSERT INTO public.remedios VALUES (2, 'Sinvastatina');
INSERT INTO public.remedios VALUES (3, 'Paracetamol');
INSERT INTO public.remedios VALUES (4, 'Codeina');
INSERT INTO public.remedios VALUES (5, 'Aripiprazol');
INSERT INTO public.remedios VALUES (6, 'Bronfeniramina');
INSERT INTO public.remedios VALUES (7, 'Carisoprodol');
INSERT INTO public.remedios VALUES (8, 'Ceftobiprol');
INSERT INTO public.remedios VALUES (9, 'Docosanol');
INSERT INTO public.remedios VALUES (10, 'Enzalutamida');
INSERT INTO public.remedios VALUES (11, 'Hiosciamina');
INSERT INTO public.remedios VALUES (12, 'Linezolida');
INSERT INTO public.remedios VALUES (13, 'Nedocromila');
INSERT INTO public.remedios VALUES (14, 'Pitolisant');
INSERT INTO public.remedios VALUES (15, 'Pamoato de pirantel');
INSERT INTO public.remedios VALUES (16, 'Regorafenibe');
INSERT INTO public.remedios VALUES (17, 'Rosuvastatina');


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 223
-- Name: consulta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consulta_id_seq', 91, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 219
-- Name: consultorio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consultorio_id_seq', 5, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 211
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_id_seq', 29, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 215
-- Name: especializacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.especializacao_id_seq', 6, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 221
-- Name: medico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medico_id_seq', 5, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 213
-- Name: paciente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paciente_id_seq', 33, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 217
-- Name: receita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receita_id_seq', 83, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 227
-- Name: receita_remedios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receita_remedios_id_seq', 27, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 209
-- Name: remedios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.remedios_id_seq', 17, true);


--
-- TOC entry 3296 (class 2606 OID 17059)
-- Name: consulta consulta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 17030)
-- Name: consultorio consultorio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT consultorio_pkey PRIMARY KEY (id);


--
-- TOC entry 3282 (class 2606 OID 16983)
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 17004)
-- Name: especializacao especializacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especializacao
    ADD CONSTRAINT especializacao_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 17042)
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id);


--
-- TOC entry 3284 (class 2606 OID 17097)
-- Name: paciente paciente_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_cpf_key UNIQUE (cpf);


--
-- TOC entry 3286 (class 2606 OID 16990)
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id);


--
-- TOC entry 3290 (class 2606 OID 17018)
-- Name: receita receita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita
    ADD CONSTRAINT receita_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 17138)
-- Name: receita_remedios receita_remedios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT receita_remedios_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 16976)
-- Name: remedios remedios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remedios
    ADD CONSTRAINT remedios_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 17150)
-- Name: receita fk_consulta_to_receita; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita
    ADD CONSTRAINT fk_consulta_to_receita FOREIGN KEY (id_consulta) REFERENCES public.consulta(id);


--
-- TOC entry 3303 (class 2606 OID 17048)
-- Name: medico fk_consultorio_to_medico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT fk_consultorio_to_medico FOREIGN KEY (id_consultorio) REFERENCES public.consultorio(id);


--
-- TOC entry 3299 (class 2606 OID 16993)
-- Name: paciente fk_endereco_to_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_endereco_to_paciente FOREIGN KEY (id_endereco) REFERENCES public.endereco(id);


--
-- TOC entry 3301 (class 2606 OID 17031)
-- Name: consultorio fk_especializacao_to_consultorio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT fk_especializacao_to_consultorio FOREIGN KEY (id_especializacao) REFERENCES public.especializacao(id);


--
-- TOC entry 3302 (class 2606 OID 17043)
-- Name: medico fk_especializacao_to_medico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT fk_especializacao_to_medico FOREIGN KEY (id_especializacao) REFERENCES public.especializacao(id);


--
-- TOC entry 3304 (class 2606 OID 17060)
-- Name: consulta fk_medico_to_consulta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_medico_to_consulta FOREIGN KEY (id_medico) REFERENCES public.medico(id);


--
-- TOC entry 3305 (class 2606 OID 17065)
-- Name: consulta fk_paciente_to_consulta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_paciente_to_consulta FOREIGN KEY (id_paciente) REFERENCES public.paciente(id);


--
-- TOC entry 3306 (class 2606 OID 17139)
-- Name: receita_remedios fk_receita_to_receita_remedios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT fk_receita_to_receita_remedios FOREIGN KEY (id_receita) REFERENCES public.receita(id);


--
-- TOC entry 3307 (class 2606 OID 17144)
-- Name: receita_remedios fk_remedios_to_receita_remedios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT fk_remedios_to_receita_remedios FOREIGN KEY (id_remedios) REFERENCES public.remedios(id);


-- Completed on 2022-07-01 17:55:43 -03

--
-- PostgreSQL database dump complete
--

