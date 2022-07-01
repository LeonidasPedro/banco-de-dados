PGDMP     4    5                z            consultorio_29062022     14.4 (Ubuntu 14.4-1.pgdg22.04+1)     14.4 (Ubuntu 14.4-1.pgdg22.04+1) R    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16969    consultorio_29062022    DATABASE     i   CREATE DATABASE consultorio_29062022 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
 $   DROP DATABASE consultorio_29062022;
                postgres    false            �            1259    17054    consulta    TABLE     �   CREATE TABLE public.consulta (
    id integer NOT NULL,
    data_consulta date NOT NULL,
    id_medico integer NOT NULL,
    id_paciente integer NOT NULL
);
    DROP TABLE public.consulta;
       public         heap    postgres    false            �            1259    17053    consulta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.consulta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.consulta_id_seq;
       public          postgres    false    224            �           0    0    consulta_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.consulta_id_seq OWNED BY public.consulta.id;
          public          postgres    false    223            �            1259    17025    consultorio    TABLE     �   CREATE TABLE public.consultorio (
    id integer NOT NULL,
    andar numeric(3,0) NOT NULL,
    id_especializacao integer NOT NULL
);
    DROP TABLE public.consultorio;
       public         heap    postgres    false            �            1259    17024    consultorio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.consultorio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.consultorio_id_seq;
       public          postgres    false    220            �           0    0    consultorio_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.consultorio_id_seq OWNED BY public.consultorio.id;
          public          postgres    false    219            �            1259    16978    endereco    TABLE     #  CREATE TABLE public.endereco (
    id integer NOT NULL,
    endereco character varying(200) NOT NULL,
    numero character varying(10) NOT NULL,
    cep numeric(8,0) NOT NULL,
    cidade character varying(50) NOT NULL,
    uf character varying(2) NOT NULL,
    pais character varying(50)
);
    DROP TABLE public.endereco;
       public         heap    postgres    false            �            1259    16977    endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public          postgres    false    212            �           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
          public          postgres    false    211            �            1259    16999    especializacao    TABLE     a   CREATE TABLE public.especializacao (
    id integer NOT NULL,
    nome character varying(100)
);
 "   DROP TABLE public.especializacao;
       public         heap    postgres    false            �            1259    16998    especializacao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especializacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.especializacao_id_seq;
       public          postgres    false    216            �           0    0    especializacao_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.especializacao_id_seq OWNED BY public.especializacao.id;
          public          postgres    false    215            �            1259    17037    medico    TABLE     �   CREATE TABLE public.medico (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
    crm numeric(10,0) NOT NULL,
    id_especializacao integer NOT NULL,
    id_consultorio integer NOT NULL
);
    DROP TABLE public.medico;
       public         heap    postgres    false            �            1259    17036    medico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.medico_id_seq;
       public          postgres    false    222            �           0    0    medico_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.medico_id_seq OWNED BY public.medico.id;
          public          postgres    false    221            �            1259    16985    paciente    TABLE     �  CREATE TABLE public.paciente (
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
    DROP TABLE public.paciente;
       public         heap    postgres    false            �            1259    16984    paciente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.paciente_id_seq;
       public          postgres    false    214            �           0    0    paciente_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.paciente_id_seq OWNED BY public.paciente.id;
          public          postgres    false    213            �            1259    17013    receita    TABLE     [   CREATE TABLE public.receita (
    id integer NOT NULL,
    id_consulta integer NOT NULL
);
    DROP TABLE public.receita;
       public         heap    postgres    false            �            1259    17012    receita_id_seq    SEQUENCE     �   CREATE SEQUENCE public.receita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.receita_id_seq;
       public          postgres    false    218            �           0    0    receita_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.receita_id_seq OWNED BY public.receita.id;
          public          postgres    false    217            �            1259    17133    receita_remedios    TABLE     �   CREATE TABLE public.receita_remedios (
    id integer NOT NULL,
    id_receita integer NOT NULL,
    id_remedios integer NOT NULL
);
 $   DROP TABLE public.receita_remedios;
       public         heap    postgres    false            �            1259    17132    receita_remedios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.receita_remedios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.receita_remedios_id_seq;
       public          postgres    false    228            �           0    0    receita_remedios_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.receita_remedios_id_seq OWNED BY public.receita_remedios.id;
          public          postgres    false    227            �            1259    16971    remedios    TABLE     d   CREATE TABLE public.remedios (
    id integer NOT NULL,
    nome character varying(200) NOT NULL
);
    DROP TABLE public.remedios;
       public         heap    postgres    false            �            1259    16970    remedios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.remedios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.remedios_id_seq;
       public          postgres    false    210            �           0    0    remedios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.remedios_id_seq OWNED BY public.remedios.id;
          public          postgres    false    209            �            1259    17166    vw_aniversariantes_hoje    VIEW     ;  CREATE VIEW public.vw_aniversariantes_hoje AS
 SELECT paciente.nome,
    paciente.sexo,
    paciente.email,
    paciente.telefone
   FROM public.paciente
  WHERE ((EXTRACT(day FROM paciente.data_nascimento) = EXTRACT(day FROM now())) AND (EXTRACT(month FROM paciente.data_nascimento) = EXTRACT(month FROM now())));
 *   DROP VIEW public.vw_aniversariantes_hoje;
       public          postgres    false    214    214    214    214    214            �            1259    17105    vw_consultas_medico_4    VIEW     �   CREATE VIEW public.vw_consultas_medico_4 AS
 SELECT consulta.id,
    consulta.data_consulta,
    consulta.id_paciente
   FROM public.consulta
  WHERE (consulta.id_medico = 4);
 (   DROP VIEW public.vw_consultas_medico_4;
       public          postgres    false    224    224    224    224            �            1259    17109    vw_pacientes_cardiologia    VIEW     }  CREATE VIEW public.vw_pacientes_cardiologia AS
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
 +   DROP VIEW public.vw_pacientes_cardiologia;
       public          postgres    false    216    214    214    214    214    222    222    224    224    216    222    214            �            1259    17155 "   vw_pacientes_usuarios_enzalutamida    VIEW     �  CREATE VIEW public.vw_pacientes_usuarios_enzalutamida AS
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
 5   DROP VIEW public.vw_pacientes_usuarios_enzalutamida;
       public          postgres    false    210    214    214    218    218    224    224    228    228    214    214    214    210            �            1259    17160    vw_tipo_sanguineo_o_positivo    VIEW     �  CREATE VIEW public.vw_tipo_sanguineo_o_positivo AS
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
 /   DROP VIEW public.vw_tipo_sanguineo_o_positivo;
       public          postgres    false    214    214    214    214    222    224    224    214    214    214    214    222            �           2604    17057    consulta id    DEFAULT     j   ALTER TABLE ONLY public.consulta ALTER COLUMN id SET DEFAULT nextval('public.consulta_id_seq'::regclass);
 :   ALTER TABLE public.consulta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    17028    consultorio id    DEFAULT     p   ALTER TABLE ONLY public.consultorio ALTER COLUMN id SET DEFAULT nextval('public.consultorio_id_seq'::regclass);
 =   ALTER TABLE public.consultorio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16981    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17002    especializacao id    DEFAULT     v   ALTER TABLE ONLY public.especializacao ALTER COLUMN id SET DEFAULT nextval('public.especializacao_id_seq'::regclass);
 @   ALTER TABLE public.especializacao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    17040 	   medico id    DEFAULT     f   ALTER TABLE ONLY public.medico ALTER COLUMN id SET DEFAULT nextval('public.medico_id_seq'::regclass);
 8   ALTER TABLE public.medico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16988    paciente id    DEFAULT     j   ALTER TABLE ONLY public.paciente ALTER COLUMN id SET DEFAULT nextval('public.paciente_id_seq'::regclass);
 :   ALTER TABLE public.paciente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    17016 
   receita id    DEFAULT     h   ALTER TABLE ONLY public.receita ALTER COLUMN id SET DEFAULT nextval('public.receita_id_seq'::regclass);
 9   ALTER TABLE public.receita ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17136    receita_remedios id    DEFAULT     z   ALTER TABLE ONLY public.receita_remedios ALTER COLUMN id SET DEFAULT nextval('public.receita_remedios_id_seq'::regclass);
 B   ALTER TABLE public.receita_remedios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16974    remedios id    DEFAULT     j   ALTER TABLE ONLY public.remedios ALTER COLUMN id SET DEFAULT nextval('public.remedios_id_seq'::regclass);
 :   ALTER TABLE public.remedios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    17054    consulta 
   TABLE DATA           M   COPY public.consulta (id, data_consulta, id_medico, id_paciente) FROM stdin;
    public          postgres    false    224   ed       �          0    17025    consultorio 
   TABLE DATA           C   COPY public.consultorio (id, andar, id_especializacao) FROM stdin;
    public          postgres    false    220   �e                 0    16978    endereco 
   TABLE DATA           O   COPY public.endereco (id, endereco, numero, cep, cidade, uf, pais) FROM stdin;
    public          postgres    false    212   �e       �          0    16999    especializacao 
   TABLE DATA           2   COPY public.especializacao (id, nome) FROM stdin;
    public          postgres    false    216   
h       �          0    17037    medico 
   TABLE DATA           R   COPY public.medico (id, nome, crm, id_especializacao, id_consultorio) FROM stdin;
    public          postgres    false    222   kh       �          0    16985    paciente 
   TABLE DATA           �   COPY public.paciente (id, cpf, rg, nome, sexo, data_nascimento, tipo_sanguineo, doador_orgaos, email, telefone, id_endereco) FROM stdin;
    public          postgres    false    214   )i       �          0    17013    receita 
   TABLE DATA           2   COPY public.receita (id, id_consulta) FROM stdin;
    public          postgres    false    218   8r       �          0    17133    receita_remedios 
   TABLE DATA           G   COPY public.receita_remedios (id, id_receita, id_remedios) FROM stdin;
    public          postgres    false    228   zr       }          0    16971    remedios 
   TABLE DATA           ,   COPY public.remedios (id, nome) FROM stdin;
    public          postgres    false    210   �r       �           0    0    consulta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.consulta_id_seq', 91, true);
          public          postgres    false    223            �           0    0    consultorio_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.consultorio_id_seq', 5, true);
          public          postgres    false    219            �           0    0    endereco_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.endereco_id_seq', 29, true);
          public          postgres    false    211            �           0    0    especializacao_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.especializacao_id_seq', 6, true);
          public          postgres    false    215            �           0    0    medico_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.medico_id_seq', 5, true);
          public          postgres    false    221            �           0    0    paciente_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.paciente_id_seq', 33, true);
          public          postgres    false    213            �           0    0    receita_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.receita_id_seq', 83, true);
          public          postgres    false    217            �           0    0    receita_remedios_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.receita_remedios_id_seq', 27, true);
          public          postgres    false    227            �           0    0    remedios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.remedios_id_seq', 17, true);
          public          postgres    false    209            �           2606    17059    consulta consulta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_pkey;
       public            postgres    false    224            �           2606    17030    consultorio consultorio_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT consultorio_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.consultorio DROP CONSTRAINT consultorio_pkey;
       public            postgres    false    220            �           2606    16983    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            postgres    false    212            �           2606    17004 "   especializacao especializacao_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.especializacao
    ADD CONSTRAINT especializacao_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.especializacao DROP CONSTRAINT especializacao_pkey;
       public            postgres    false    216            �           2606    17042    medico medico_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.medico DROP CONSTRAINT medico_pkey;
       public            postgres    false    222            �           2606    17097    paciente paciente_cpf_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_cpf_key UNIQUE (cpf);
 C   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_cpf_key;
       public            postgres    false    214            �           2606    16990    paciente paciente_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            postgres    false    214            �           2606    17018    receita receita_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.receita
    ADD CONSTRAINT receita_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.receita DROP CONSTRAINT receita_pkey;
       public            postgres    false    218            �           2606    17138 &   receita_remedios receita_remedios_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT receita_remedios_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.receita_remedios DROP CONSTRAINT receita_remedios_pkey;
       public            postgres    false    228            �           2606    16976    remedios remedios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.remedios
    ADD CONSTRAINT remedios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.remedios DROP CONSTRAINT remedios_pkey;
       public            postgres    false    210            �           2606    17150    receita fk_consulta_to_receita    FK CONSTRAINT     �   ALTER TABLE ONLY public.receita
    ADD CONSTRAINT fk_consulta_to_receita FOREIGN KEY (id_consulta) REFERENCES public.consulta(id);
 H   ALTER TABLE ONLY public.receita DROP CONSTRAINT fk_consulta_to_receita;
       public          postgres    false    218    3296    224            �           2606    17048    medico fk_consultorio_to_medico    FK CONSTRAINT     �   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT fk_consultorio_to_medico FOREIGN KEY (id_consultorio) REFERENCES public.consultorio(id);
 I   ALTER TABLE ONLY public.medico DROP CONSTRAINT fk_consultorio_to_medico;
       public          postgres    false    222    3292    220            �           2606    16993     paciente fk_endereco_to_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_endereco_to_paciente FOREIGN KEY (id_endereco) REFERENCES public.endereco(id);
 J   ALTER TABLE ONLY public.paciente DROP CONSTRAINT fk_endereco_to_paciente;
       public          postgres    false    3282    214    212            �           2606    17031 ,   consultorio fk_especializacao_to_consultorio    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT fk_especializacao_to_consultorio FOREIGN KEY (id_especializacao) REFERENCES public.especializacao(id);
 V   ALTER TABLE ONLY public.consultorio DROP CONSTRAINT fk_especializacao_to_consultorio;
       public          postgres    false    3288    216    220            �           2606    17043 "   medico fk_especializacao_to_medico    FK CONSTRAINT     �   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT fk_especializacao_to_medico FOREIGN KEY (id_especializacao) REFERENCES public.especializacao(id);
 L   ALTER TABLE ONLY public.medico DROP CONSTRAINT fk_especializacao_to_medico;
       public          postgres    false    222    3288    216            �           2606    17060    consulta fk_medico_to_consulta    FK CONSTRAINT     �   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_medico_to_consulta FOREIGN KEY (id_medico) REFERENCES public.medico(id);
 H   ALTER TABLE ONLY public.consulta DROP CONSTRAINT fk_medico_to_consulta;
       public          postgres    false    224    3294    222            �           2606    17065     consulta fk_paciente_to_consulta    FK CONSTRAINT     �   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_paciente_to_consulta FOREIGN KEY (id_paciente) REFERENCES public.paciente(id);
 J   ALTER TABLE ONLY public.consulta DROP CONSTRAINT fk_paciente_to_consulta;
       public          postgres    false    214    224    3286            �           2606    17139 /   receita_remedios fk_receita_to_receita_remedios    FK CONSTRAINT     �   ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT fk_receita_to_receita_remedios FOREIGN KEY (id_receita) REFERENCES public.receita(id);
 Y   ALTER TABLE ONLY public.receita_remedios DROP CONSTRAINT fk_receita_to_receita_remedios;
       public          postgres    false    228    3290    218            �           2606    17144 0   receita_remedios fk_remedios_to_receita_remedios    FK CONSTRAINT     �   ALTER TABLE ONLY public.receita_remedios
    ADD CONSTRAINT fk_remedios_to_receita_remedios FOREIGN KEY (id_remedios) REFERENCES public.remedios(id);
 Z   ALTER TABLE ONLY public.receita_remedios DROP CONSTRAINT fk_remedios_to_receita_remedios;
       public          postgres    false    228    210    3280            �     x�eԻm1E�X�e�O������bE�lp��C��3��>x�7�ϑT�P�FO(Š�Yx(q�E�m�^��z�;��$��H�_W��P�,`0��f��Y��`V0+��
f����l`60��߬���,���,�ٲ'�^���;I>{)r�ו\�(0;��f��9�`0���6����5���5G��5G�����Y}')g/E���R
��1�3���]�^�r��(���u%�\g�T��EŽ쥒+1��ʲ[Y~++@Y7|o(׭\��3������Q      �   '   x�3�4�4�2�F\�@Ҙ˄ӈӄ�H�r��qqq KX*         1  x��T�n�0<�_�H���hqS�F\�ȩF��[($J��[?%�!衧~�~�K�j���!�pfw�볽��x	|m�Q�8�X�'�����BY(6_2:�f��������4�����j'��ya���4jK�$֊Eq��0N���#j����Ҹ-݋��K' �$m�Vh|c��g��J��k�]�{�N��Y��K��K���R��gpZ�<u��?���T:>��E�zc��K��F!_�)���F�{�ke�|%,��b�5$�}'�F�ӥ�x�%`�YT
� �*��B�<6/y����Ȃq\�vZ4��3�$T��j�����XI8a	fr4]`ֶB�3h�'g���[|:8�.E�W!��	�.+;U�< 	�(��|#�(�,��$g�8QDz���K���6ĕ{���g(/���g<(T��� [T�0,�3�����sY+I�������#Au�����ƞ�ƃ��M����7Vb�^Y�6���C�Ɇ�������us�e��
1�O�/DU�.�w�O��*x�P{8��O׳��7�$�'      �   Q   x�5�A
�@@ѵ����iڈ#"�6ݿ����LY�yS#\�j���B�P@���$��ovc�T�P�猈/��^      �   �   x�=�=
1F��)�B��_�BPX���f�D��M�y��7؋96V_��ޓ0=(��'
ϖ\�)�=����@*�Y�P0�����>�\q���
�v?L��T%��6����Qz�˒Aje�`���kTXz�����;��V2cA����>9nb�ǁZ��1'.!��;;      �   �  x�eW�n��]W�	XU�׎���xby�0 @�Į�Ç�d�D�9�"�»��~,�[R��P�u/���s�=�t��Bs_��VL(��E�r����mﳷ�	}Ȯ���?����{��o��	�D^�\��/l������a�B6���q�ƙߎ�OB�9�΋2/�)�]	ɊR�,y�U^8�$�_^ ��8��uې�c3���*�ȁ�ؚB�Kdu�s��ߖ�K����
o�%+��Jj^X�ɔ�s\�7ͮ�y�w���Ǳ��O�ob�}��Į�T��wy!s��U#�<�{��-%T�>Ԩ�4��y��.�2�`�B䥐���S
˽r�y�˂)��z�Q�w�p=:�y��7���L3Z�롟c3�5J��,�mw��S���)��m; �*G�rN���V�rR�$�p/En=+%����{?�ۈ.�i� g�8M�ߠw����>���H*���,�<"�o�H�U���6m�!yM�R(�e��JJ�}���`��K��1
��\�7����@窟�ף^7��o��u*�Z�S^>.q�Wu�n8�f���X$��[Z�b�v/��hZɤ��S2�>�� *��o��!Ro�i8��%	f MUXrx�G
�b������$J�;L3+4�[���`��ӨKB��[�+�$9�%��-��i���WD	�"�PZ~GQ��;���g���>�^IL����ʃ���`��4�
}� J3� $-��k��y���`�!R��"&�Ź�n��&��V��)b��Z�����'�C���ZǮщv�>�v��&t��`����K���S�z��*��p|���	H�Rc�˅U)q0M�O�����L�����M��~��1�cx�1���U�f6E�_�%~ݥ�j�-�p&��5����\	��  %�͠S��5fǕ:��C8>|���%���Rk
:^��o���>�U�����%�ٸ�Ӻ0���i��F����4"
�I��0�|��O�vMx�8����)�J�]��BS�c�PHT��ʵԴp�THn,j_DOe�R�[gh�45�9{����aw�:��>E��I�)�At
�6c,�ii�N�UZ�[��+��#�cS�u�K����p�ݕ}�+AB���HV_�/{�YiB�W��Z���m����x��pV�R�P��u�j�.��(�"N��6G��C�z��Ls��� g8�fhV�fdfCJk��n	���~���ӘZ�s�Rc��s�JW�����z�ֳԌ_�qG+���OND�ΧV`Uu];<��س��i\a,��/��#���5 �WX����Oq3٫8�$��dM�%Z�sʼ�D-D�\m�6�p%\�=[�.�6jYx�VXC%P�ғ3�u�
�.)ȼxZ��(14�KĞ����fs��P��Nkvݥ�uX��o�H��p,`�4PJ�`4�Fє���jAB��d��܄m�#�n��e/�$�>�S|��8/��0v�i�T�"����2��q�+]��~*�
������&�4�d6�s��c�>��#z�Y����=����PV86;LZ�(���^����+���a��Ô}E��?\�aG��%9����[2a��v�m��nѐ����.͓~��x�L�#�԰`b�*�������chF8�y�ȧ��s�����&��)�G��YE�e��@�B�X�(	YT�- ��s��3�V*� !�a��lih>��>f�¡}1�x��$p����q�[o�%T�C*ړ5M�*@��XL�a�l�&+D�J��i�/L���r��\! C���Ԩ�/=�L��U���ع�h#mr�
���XIXw�rr�>��KkN`հ_b�7[�Q��d�����N)�K)|��R�w팮M�������bXt��+L0�U �k�G�4�Hgr�~�o���އ㋋^h�/f��D��ے���]���R|�N[\l:���ҏi�XJ�Z��IșS��d�P4���ĉ����6���a��O��ŦiG�����5��d��%���%�C��������I0%���&�Yte���W?�~�Ͼ�.Lٻp;ҝ��.�����l/~]/(����S�: �0TP~X�a�A|��fq%�5�����7�B�>�oE�
�78���=8y���vݺ��t�)8-��[���9�򹽐�2�WX� oO� ��+.`Kn�F ��d[�þ<��<�g�&K6����Ul�.���@q��͇qj.y�G�� ���j��?l?�.      �   2   x�Ʊ�@��[���mz��:@��Uy�j�<��T�囎����{ �|F      �   Y   x�%���0�f�*�&vv��sԴ�C>�9"wl��@��f����ȴ�f���O�Cο�^<�$�R�h�ivAw-�٢���Px. /�x�      }   �   x�E�;n�@Dk�>���7)c%��0�6���R��.|�PI���G���P7p_RT�\
�.dԱӨn����~�&�LF����`Zz.b4�x�T�Ls�Wh�w��}�7��N+���|�'��L�Ek'>i')�pg�ڙ�2���E<PX9�mT�\�S4)����oj4��2�=�Z��~/�B�T�     