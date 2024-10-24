PGDMP  .                	    |         
   projeto_db    17.0    17.0 D    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            :           1262    16444 
   projeto_db    DATABASE     �   CREATE DATABASE projeto_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE projeto_db;
                     postgres    false                        2615    2200    Trilhas    SCHEMA        CREATE SCHEMA "Trilhas";
    DROP SCHEMA "Trilhas";
                     pg_database_owner    false            ;           0    0    SCHEMA "Trilhas"    COMMENT     9   COMMENT ON SCHEMA "Trilhas" IS 'standard public schema';
                        pg_database_owner    false    5            �            1259    16471    alunos    TABLE     *  CREATE TABLE "Trilhas".alunos (
    aluno_id integer NOT NULL,
    nome_aluno character varying(300) NOT NULL,
    sobrenome_aluno character varying(300) NOT NULL,
    ra integer NOT NULL,
    semestre integer NOT NULL,
    curso character varying(300) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE "Trilhas".alunos;
       Trilhas         heap r       postgres    false    5            �            1259    16469    alunos_aluno_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".alunos_aluno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Trilhas".alunos_aluno_id_seq;
       Trilhas               postgres    false    224    5            <           0    0    alunos_aluno_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "Trilhas".alunos_aluno_id_seq OWNED BY "Trilhas".alunos.aluno_id;
          Trilhas               postgres    false    222            �            1259    16470    alunos_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".alunos_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Trilhas".alunos_usuario_id_seq;
       Trilhas               postgres    false    5    224            =           0    0    alunos_usuario_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "Trilhas".alunos_usuario_id_seq OWNED BY "Trilhas".alunos.usuario_id;
          Trilhas               postgres    false    223            �            1259    16495    perguntas_principais    TABLE     �   CREATE TABLE "Trilhas".perguntas_principais (
    pergunta_id integer NOT NULL,
    pilar_id integer NOT NULL,
    descricao character varying(500) NOT NULL
);
 +   DROP TABLE "Trilhas".perguntas_principais;
       Trilhas         heap r       postgres    false    5            �            1259    16494 $   perguntas_principais_pergunta_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".perguntas_principais_pergunta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "Trilhas".perguntas_principais_pergunta_id_seq;
       Trilhas               postgres    false    226    5            >           0    0 $   perguntas_principais_pergunta_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "Trilhas".perguntas_principais_pergunta_id_seq OWNED BY "Trilhas".perguntas_principais.pergunta_id;
          Trilhas               postgres    false    225            �            1259    16518    perguntas_secundarias_nao    TABLE     �   CREATE TABLE "Trilhas".perguntas_secundarias_nao (
    pergunta_secundaria_id integer NOT NULL,
    pergunta_principal_id integer NOT NULL,
    descricao character varying(500) NOT NULL
);
 0   DROP TABLE "Trilhas".perguntas_secundarias_nao;
       Trilhas         heap r       postgres    false    5            �            1259    16517 4   perguntas_secundarias_nao_pergunta_secundaria_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".perguntas_secundarias_nao_pergunta_secundaria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE "Trilhas".perguntas_secundarias_nao_pergunta_secundaria_id_seq;
       Trilhas               postgres    false    230    5            ?           0    0 4   perguntas_secundarias_nao_pergunta_secundaria_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "Trilhas".perguntas_secundarias_nao_pergunta_secundaria_id_seq OWNED BY "Trilhas".perguntas_secundarias_nao.pergunta_secundaria_id;
          Trilhas               postgres    false    229            �            1259    16504    perguntas_secundarias_sim    TABLE     �   CREATE TABLE "Trilhas".perguntas_secundarias_sim (
    pergunta_secundaria_id integer NOT NULL,
    pergunta_principal_id integer NOT NULL,
    descricao character varying(500) NOT NULL
);
 0   DROP TABLE "Trilhas".perguntas_secundarias_sim;
       Trilhas         heap r       postgres    false    5            �            1259    16503 4   perguntas_secundarias_sim_pergunta_secundaria_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".perguntas_secundarias_sim_pergunta_secundaria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE "Trilhas".perguntas_secundarias_sim_pergunta_secundaria_id_seq;
       Trilhas               postgres    false    5    228            @           0    0 4   perguntas_secundarias_sim_pergunta_secundaria_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "Trilhas".perguntas_secundarias_sim_pergunta_secundaria_id_seq OWNED BY "Trilhas".perguntas_secundarias_sim.pergunta_secundaria_id;
          Trilhas               postgres    false    227            �            1259    16457    professores    TABLE     �   CREATE TABLE "Trilhas".professores (
    professor_id integer NOT NULL,
    nome_professor character varying(300) NOT NULL,
    usuario_id integer NOT NULL
);
 "   DROP TABLE "Trilhas".professores;
       Trilhas         heap r       postgres    false    5            �            1259    16455    professores_professor_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".professores_professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Trilhas".professores_professor_id_seq;
       Trilhas               postgres    false    5    221            A           0    0    professores_professor_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Trilhas".professores_professor_id_seq OWNED BY "Trilhas".professores.professor_id;
          Trilhas               postgres    false    219            �            1259    16456    professores_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".professores_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "Trilhas".professores_usuario_id_seq;
       Trilhas               postgres    false    221    5            B           0    0    professores_usuario_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "Trilhas".professores_usuario_id_seq OWNED BY "Trilhas".professores.usuario_id;
          Trilhas               postgres    false    220            �            1259    16532 	   respostas    TABLE     #  CREATE TABLE "Trilhas".respostas (
    resposta_id integer NOT NULL,
    usuario_id integer NOT NULL,
    pergunta_id integer NOT NULL,
    tipo_pergunta character varying(10) NOT NULL,
    resposta_texto character varying(1000),
    resposta_escala integer,
    resposta_binaria boolean
);
     DROP TABLE "Trilhas".respostas;
       Trilhas         heap r       postgres    false    5            �            1259    16531    respostas_resposta_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".respostas_resposta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Trilhas".respostas_resposta_id_seq;
       Trilhas               postgres    false    5    232            C           0    0    respostas_resposta_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Trilhas".respostas_resposta_id_seq OWNED BY "Trilhas".respostas.resposta_id;
          Trilhas               postgres    false    231            �            1259    16446    usuarios    TABLE     �   CREATE TABLE "Trilhas".usuarios (
    usuario_id integer NOT NULL,
    email character varying(300) NOT NULL,
    senha character varying(255) DEFAULT '12345'::character varying
);
    DROP TABLE "Trilhas".usuarios;
       Trilhas         heap r       postgres    false    5            �            1259    16445    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE "Trilhas".usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Trilhas".usuarios_usuario_id_seq;
       Trilhas               postgres    false    5    218            D           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Trilhas".usuarios_usuario_id_seq OWNED BY "Trilhas".usuarios.usuario_id;
          Trilhas               postgres    false    217            {           2604    16474    alunos aluno_id    DEFAULT     x   ALTER TABLE ONLY "Trilhas".alunos ALTER COLUMN aluno_id SET DEFAULT nextval('"Trilhas".alunos_aluno_id_seq'::regclass);
 A   ALTER TABLE "Trilhas".alunos ALTER COLUMN aluno_id DROP DEFAULT;
       Trilhas               postgres    false    224    222    224            |           2604    16475    alunos usuario_id    DEFAULT     |   ALTER TABLE ONLY "Trilhas".alunos ALTER COLUMN usuario_id SET DEFAULT nextval('"Trilhas".alunos_usuario_id_seq'::regclass);
 C   ALTER TABLE "Trilhas".alunos ALTER COLUMN usuario_id DROP DEFAULT;
       Trilhas               postgres    false    223    224    224            }           2604    16498     perguntas_principais pergunta_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".perguntas_principais ALTER COLUMN pergunta_id SET DEFAULT nextval('"Trilhas".perguntas_principais_pergunta_id_seq'::regclass);
 R   ALTER TABLE "Trilhas".perguntas_principais ALTER COLUMN pergunta_id DROP DEFAULT;
       Trilhas               postgres    false    225    226    226                       2604    16521 0   perguntas_secundarias_nao pergunta_secundaria_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_nao ALTER COLUMN pergunta_secundaria_id SET DEFAULT nextval('"Trilhas".perguntas_secundarias_nao_pergunta_secundaria_id_seq'::regclass);
 b   ALTER TABLE "Trilhas".perguntas_secundarias_nao ALTER COLUMN pergunta_secundaria_id DROP DEFAULT;
       Trilhas               postgres    false    230    229    230            ~           2604    16507 0   perguntas_secundarias_sim pergunta_secundaria_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_sim ALTER COLUMN pergunta_secundaria_id SET DEFAULT nextval('"Trilhas".perguntas_secundarias_sim_pergunta_secundaria_id_seq'::regclass);
 b   ALTER TABLE "Trilhas".perguntas_secundarias_sim ALTER COLUMN pergunta_secundaria_id DROP DEFAULT;
       Trilhas               postgres    false    228    227    228            y           2604    16460    professores professor_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".professores ALTER COLUMN professor_id SET DEFAULT nextval('"Trilhas".professores_professor_id_seq'::regclass);
 J   ALTER TABLE "Trilhas".professores ALTER COLUMN professor_id DROP DEFAULT;
       Trilhas               postgres    false    221    219    221            z           2604    16461    professores usuario_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".professores ALTER COLUMN usuario_id SET DEFAULT nextval('"Trilhas".professores_usuario_id_seq'::regclass);
 H   ALTER TABLE "Trilhas".professores ALTER COLUMN usuario_id DROP DEFAULT;
       Trilhas               postgres    false    220    221    221            �           2604    16535    respostas resposta_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".respostas ALTER COLUMN resposta_id SET DEFAULT nextval('"Trilhas".respostas_resposta_id_seq'::regclass);
 G   ALTER TABLE "Trilhas".respostas ALTER COLUMN resposta_id DROP DEFAULT;
       Trilhas               postgres    false    232    231    232            w           2604    16449    usuarios usuario_id    DEFAULT     �   ALTER TABLE ONLY "Trilhas".usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('"Trilhas".usuarios_usuario_id_seq'::regclass);
 E   ALTER TABLE "Trilhas".usuarios ALTER COLUMN usuario_id DROP DEFAULT;
       Trilhas               postgres    false    218    217    218            ,          0    16471    alunos 
   TABLE DATA           k   COPY "Trilhas".alunos (aluno_id, nome_aluno, sobrenome_aluno, ra, semestre, curso, usuario_id) FROM stdin;
    Trilhas               postgres    false    224   X       .          0    16495    perguntas_principais 
   TABLE DATA           S   COPY "Trilhas".perguntas_principais (pergunta_id, pilar_id, descricao) FROM stdin;
    Trilhas               postgres    false    226    X       2          0    16518    perguntas_secundarias_nao 
   TABLE DATA           p   COPY "Trilhas".perguntas_secundarias_nao (pergunta_secundaria_id, pergunta_principal_id, descricao) FROM stdin;
    Trilhas               postgres    false    230   eX       0          0    16504    perguntas_secundarias_sim 
   TABLE DATA           p   COPY "Trilhas".perguntas_secundarias_sim (pergunta_secundaria_id, pergunta_principal_id, descricao) FROM stdin;
    Trilhas               postgres    false    228   �X       )          0    16457    professores 
   TABLE DATA           R   COPY "Trilhas".professores (professor_id, nome_professor, usuario_id) FROM stdin;
    Trilhas               postgres    false    221   Y       4          0    16532 	   respostas 
   TABLE DATA           �   COPY "Trilhas".respostas (resposta_id, usuario_id, pergunta_id, tipo_pergunta, resposta_texto, resposta_escala, resposta_binaria) FROM stdin;
    Trilhas               postgres    false    232   *Y       &          0    16446    usuarios 
   TABLE DATA           ?   COPY "Trilhas".usuarios (usuario_id, email, senha) FROM stdin;
    Trilhas               postgres    false    218   GY       E           0    0    alunos_aluno_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Trilhas".alunos_aluno_id_seq', 1, false);
          Trilhas               postgres    false    222            F           0    0    alunos_usuario_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Trilhas".alunos_usuario_id_seq', 1, false);
          Trilhas               postgres    false    223            G           0    0 $   perguntas_principais_pergunta_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"Trilhas".perguntas_principais_pergunta_id_seq', 1, true);
          Trilhas               postgres    false    225            H           0    0 4   perguntas_secundarias_nao_pergunta_secundaria_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('"Trilhas".perguntas_secundarias_nao_pergunta_secundaria_id_seq', 1, true);
          Trilhas               postgres    false    229            I           0    0 4   perguntas_secundarias_sim_pergunta_secundaria_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('"Trilhas".perguntas_secundarias_sim_pergunta_secundaria_id_seq', 1, true);
          Trilhas               postgres    false    227            J           0    0    professores_professor_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Trilhas".professores_professor_id_seq', 1, false);
          Trilhas               postgres    false    219            K           0    0    professores_usuario_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"Trilhas".professores_usuario_id_seq', 1, false);
          Trilhas               postgres    false    220            L           0    0    respostas_resposta_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"Trilhas".respostas_resposta_id_seq', 1, true);
          Trilhas               postgres    false    231            M           0    0    usuarios_usuario_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Trilhas".usuarios_usuario_id_seq', 1, false);
          Trilhas               postgres    false    217            �           2606    16479    alunos alunos_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Trilhas".alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (aluno_id, usuario_id);
 ?   ALTER TABLE ONLY "Trilhas".alunos DROP CONSTRAINT alunos_pkey;
       Trilhas                 postgres    false    224    224            �           2606    16502 .   perguntas_principais perguntas_principais_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "Trilhas".perguntas_principais
    ADD CONSTRAINT perguntas_principais_pkey PRIMARY KEY (pergunta_id);
 [   ALTER TABLE ONLY "Trilhas".perguntas_principais DROP CONSTRAINT perguntas_principais_pkey;
       Trilhas                 postgres    false    226            �           2606    16525 8   perguntas_secundarias_nao perguntas_secundarias_nao_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_nao
    ADD CONSTRAINT perguntas_secundarias_nao_pkey PRIMARY KEY (pergunta_secundaria_id);
 e   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_nao DROP CONSTRAINT perguntas_secundarias_nao_pkey;
       Trilhas                 postgres    false    230            �           2606    16511 8   perguntas_secundarias_sim perguntas_secundarias_sim_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_sim
    ADD CONSTRAINT perguntas_secundarias_sim_pkey PRIMARY KEY (pergunta_secundaria_id);
 e   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_sim DROP CONSTRAINT perguntas_secundarias_sim_pkey;
       Trilhas                 postgres    false    228            �           2606    16463    professores professores_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "Trilhas".professores
    ADD CONSTRAINT professores_pkey PRIMARY KEY (professor_id, usuario_id);
 I   ALTER TABLE ONLY "Trilhas".professores DROP CONSTRAINT professores_pkey;
       Trilhas                 postgres    false    221    221            �           2606    16539    respostas respostas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Trilhas".respostas
    ADD CONSTRAINT respostas_pkey PRIMARY KEY (resposta_id);
 E   ALTER TABLE ONLY "Trilhas".respostas DROP CONSTRAINT respostas_pkey;
       Trilhas                 postgres    false    232            �           2606    16454    usuarios usuarios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "Trilhas".usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);
 C   ALTER TABLE ONLY "Trilhas".usuarios DROP CONSTRAINT usuarios_pkey;
       Trilhas                 postgres    false    218            �           2606    16480    alunos alunos_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".alunos
    ADD CONSTRAINT alunos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES "Trilhas".usuarios(usuario_id);
 J   ALTER TABLE ONLY "Trilhas".alunos DROP CONSTRAINT alunos_usuario_id_fkey;
       Trilhas               postgres    false    218    4738    224            �           2606    16526 3   perguntas_secundarias_nao fk_pergunta_principal_nao    FK CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_nao
    ADD CONSTRAINT fk_pergunta_principal_nao FOREIGN KEY (pergunta_principal_id) REFERENCES "Trilhas".perguntas_principais(pergunta_id);
 `   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_nao DROP CONSTRAINT fk_pergunta_principal_nao;
       Trilhas               postgres    false    4744    226    230            �           2606    16512 3   perguntas_secundarias_sim fk_pergunta_principal_sim    FK CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_sim
    ADD CONSTRAINT fk_pergunta_principal_sim FOREIGN KEY (pergunta_principal_id) REFERENCES "Trilhas".perguntas_principais(pergunta_id);
 `   ALTER TABLE ONLY "Trilhas".perguntas_secundarias_sim DROP CONSTRAINT fk_pergunta_principal_sim;
       Trilhas               postgres    false    228    226    4744            �           2606    16540    respostas fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".respostas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES "Trilhas".usuarios(usuario_id);
 A   ALTER TABLE ONLY "Trilhas".respostas DROP CONSTRAINT fk_usuario;
       Trilhas               postgres    false    218    4738    232            �           2606    16464 '   professores professores_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trilhas".professores
    ADD CONSTRAINT professores_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES "Trilhas".usuarios(usuario_id);
 T   ALTER TABLE ONLY "Trilhas".professores DROP CONSTRAINT professores_usuario_id_fkey;
       Trilhas               postgres    false    218    221    4738            ,      x������ � �      .   5   x�3�4��O>�J!����B���ĤĜ�ļ�|�Ē�Ĝ�Լ�T{�=... d�      2   2   x�3�4��O>�J!����B�����Ңļ�|���ĤĜ�|{�=... N,�      0   V   x�3�4�N-U()JLJ���W(I�UHT(K-RH��U�W(,MU(�O>�J!=��$Q!%U!-�*��^Aõ891'Q�P��@�+F��� �?z      )      x������ � �      4      x������ � �      &      x������ � �     