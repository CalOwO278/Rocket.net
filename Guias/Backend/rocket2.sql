PGDMP                         {         
   rockettest    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40960 
   rockettest    DATABASE     �   CREATE DATABASE rockettest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE rockettest;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    40961    anuncios    TABLE     �   CREATE TABLE public.anuncios (
    id_anuncio integer NOT NULL,
    anuncio character varying(255),
    fecha_inicio date,
    fecha_fin date,
    id_usuario integer
);
    DROP TABLE public.anuncios;
       public         heap    postgres    false    5            �            1259    40964    Anuncio_id_anuncio_seq    SEQUENCE     �   CREATE SEQUENCE public."Anuncio_id_anuncio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Anuncio_id_anuncio_seq";
       public          postgres    false    5    214            �           0    0    Anuncio_id_anuncio_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Anuncio_id_anuncio_seq" OWNED BY public.anuncios.id_anuncio;
          public          postgres    false    215            �            1259    40965 
   auditorias    TABLE     �   CREATE TABLE public.auditorias (
    id_auditoria integer NOT NULL,
    operacion character varying(100),
    id_usuario integer,
    fecha date,
    hora time without time zone
);
    DROP TABLE public.auditorias;
       public         heap    postgres    false    5            �            1259    40968    Auditoria_id_auditoria_seq    SEQUENCE     �   CREATE SEQUENCE public."Auditoria_id_auditoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Auditoria_id_auditoria_seq";
       public          postgres    false    216    5            �           0    0    Auditoria_id_auditoria_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."Auditoria_id_auditoria_seq" OWNED BY public.auditorias.id_auditoria;
          public          postgres    false    217            �            1259    40969    clientes    TABLE     /  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(100),
    telefono character varying(20),
    correo character varying(255),
    id_plan integer,
    id_usuario integer,
    estado_usuario integer,
    borrado boolean
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    5            �            1259    40972    Cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public."Cliente_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Cliente_id_cliente_seq";
       public          postgres    false    5    218            �           0    0    Cliente_id_cliente_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Cliente_id_cliente_seq" OWNED BY public.clientes.id_cliente;
          public          postgres    false    219            �            1259    40973    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_departamento character varying(50),
    borrado boolean
);
 !   DROP TABLE public.departamentos;
       public         heap    postgres    false    5            �            1259    40976     Departamento_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public."Departamento_id_departamento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Departamento_id_departamento_seq";
       public          postgres    false    5    220            �           0    0     Departamento_id_departamento_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public."Departamento_id_departamento_seq" OWNED BY public.departamentos.id_departamento;
          public          postgres    false    221            �            1259    40977 
   documentos    TABLE       CREATE TABLE public.documentos (
    id_documento integer NOT NULL,
    titulo character varying(50),
    descripcion character varying(255),
    id_usuario integer,
    hora_subida timestamp without time zone,
    fecha_subida date,
    permiso integer,
    borrado boolean
);
    DROP TABLE public.documentos;
       public         heap    postgres    false    5            �            1259    40980    Documentos_id_documento_seq    SEQUENCE     �   CREATE SEQUENCE public."Documentos_id_documento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Documentos_id_documento_seq";
       public          postgres    false    5    222            �           0    0    Documentos_id_documento_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Documentos_id_documento_seq" OWNED BY public.documentos.id_documento;
          public          postgres    false    223            �            1259    40981    mensajes    TABLE     �   CREATE TABLE public.mensajes (
    id_mensaje integer NOT NULL,
    contenido character varying(255),
    usuario_emisor integer,
    usuario_receptor integer,
    fecha date,
    hora time without time zone
);
    DROP TABLE public.mensajes;
       public         heap    postgres    false    5            �            1259    40984    Mensaje_id_mensaje_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensaje_id_mensaje_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Mensaje_id_mensaje_seq";
       public          postgres    false    5    224            �           0    0    Mensaje_id_mensaje_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Mensaje_id_mensaje_seq" OWNED BY public.mensajes.id_mensaje;
          public          postgres    false    225            �            1259    40985    planes    TABLE     �   CREATE TABLE public.planes (
    id_plan integer NOT NULL,
    nombre_plan character varying(50),
    descripcion character varying(255),
    precio double precision,
    estado_plan integer,
    borrado boolean
);
    DROP TABLE public.planes;
       public         heap    postgres    false    5            �            1259    40988    Planes_id_Plan_seq    SEQUENCE     �   CREATE SEQUENCE public."Planes_id_Plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Planes_id_Plan_seq";
       public          postgres    false    226    5            �           0    0    Planes_id_Plan_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Planes_id_Plan_seq" OWNED BY public.planes.id_plan;
          public          postgres    false    227            �            1259    40989    puntos    TABLE     �   CREATE TABLE public.puntos (
    id_punto integer NOT NULL,
    id_poligono integer,
    latitud double precision,
    longitud double precision
);
    DROP TABLE public.puntos;
       public         heap    postgres    false    5            �            1259    40992    Puntos_id_punto_seq    SEQUENCE     �   CREATE SEQUENCE public."Puntos_id_punto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Puntos_id_punto_seq";
       public          postgres    false    5    228            �           0    0    Puntos_id_punto_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Puntos_id_punto_seq" OWNED BY public.puntos.id_punto;
          public          postgres    false    229            �            1259    40993    sedes_departamentos    TABLE     �   CREATE TABLE public.sedes_departamentos (
    id_sede_departamento integer NOT NULL,
    id_departamento integer,
    id_sede integer
);
 '   DROP TABLE public.sedes_departamentos;
       public         heap    postgres    false    5            �            1259    40996 %   Sede-Departamento_id_Departamento_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_Departamento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."Sede-Departamento_id_Departamento_seq";
       public          postgres    false    230    5            �           0    0 %   Sede-Departamento_id_Departamento_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Sede-Departamento_id_Departamento_seq" OWNED BY public.sedes_departamentos.id_departamento;
          public          postgres    false    231            �            1259    40997 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_SedeDepar_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Sede-Departamento_id_SedeDepar_seq";
       public          postgres    false    5    230            �           0    0 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Sede-Departamento_id_SedeDepar_seq" OWNED BY public.sedes_departamentos.id_sede_departamento;
          public          postgres    false    232            �            1259    40998    Sede-Departamento_id_Sede_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_Sede_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Sede-Departamento_id_Sede_seq";
       public          postgres    false    5    230            �           0    0    Sede-Departamento_id_Sede_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Sede-Departamento_id_Sede_seq" OWNED BY public.sedes_departamentos.id_sede;
          public          postgres    false    233            �            1259    40999    sedes    TABLE     �   CREATE TABLE public.sedes (
    id_sede integer NOT NULL,
    nombre_sede character varying(50),
    ip character varying(255),
    borrado boolean,
    latitud double precision,
    longitud double precision
);
    DROP TABLE public.sedes;
       public         heap    postgres    false    5            �            1259    41002    Sede_id_Sede_seq    SEQUENCE     {   CREATE SEQUENCE public."Sede_id_Sede_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Sede_id_Sede_seq";
       public          postgres    false    234    5            �           0    0    Sede_id_Sede_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."Sede_id_Sede_seq" OWNED BY public.sedes.id_sede;
          public          postgres    false    235            �            1259    41003    tipos_usuarios    TABLE     t   CREATE TABLE public.tipos_usuarios (
    id_tipo_usuario integer NOT NULL,
    descripcion character varying(50)
);
 "   DROP TABLE public.tipos_usuarios;
       public         heap    postgres    false    5            �            1259    41006    Tipo_usuario_id_tipousuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Tipo_usuario_id_tipousuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Tipo_usuario_id_tipousuario_seq";
       public          postgres    false    5    236            �           0    0    Tipo_usuario_id_tipousuario_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public."Tipo_usuario_id_tipousuario_seq" OWNED BY public.tipos_usuarios.id_tipo_usuario;
          public          postgres    false    237            �            1259    41007    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(50),
    id_sededepar integer,
    id_tipousuario integer,
    nombre character varying(50),
    apellido character varying(50),
    pregunta character varying(255),
    clave character varying(255),
    foto_usuario character varying(255),
    extension_telefonica character varying(20),
    borrado boolean
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    5            �            1259    41012    Usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Usuario_id_usuario_seq";
       public          postgres    false    5    238            �           0    0    Usuario_id_usuario_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Usuario_id_usuario_seq" OWNED BY public.usuarios.id_usuario;
          public          postgres    false    239            �            1259    41013 	   poligonos    TABLE     �   CREATE TABLE public.poligonos (
    id_poligono integer NOT NULL,
    nombre_poligono character varying(50),
    id_usuario integer
);
    DROP TABLE public.poligonos;
       public         heap    postgres    false    5            �            1259    41016    Zona_id_zona_seq    SEQUENCE     �   CREATE SEQUENCE public."Zona_id_zona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Zona_id_zona_seq";
       public          postgres    false    5    240            �           0    0    Zona_id_zona_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."Zona_id_zona_seq" OWNED BY public.poligonos.id_poligono;
          public          postgres    false    241            �           2604    41017    anuncios id_anuncio    DEFAULT     {   ALTER TABLE ONLY public.anuncios ALTER COLUMN id_anuncio SET DEFAULT nextval('public."Anuncio_id_anuncio_seq"'::regclass);
 B   ALTER TABLE public.anuncios ALTER COLUMN id_anuncio DROP DEFAULT;
       public          postgres    false    215    214            �           2604    41018    auditorias id_auditoria    DEFAULT     �   ALTER TABLE ONLY public.auditorias ALTER COLUMN id_auditoria SET DEFAULT nextval('public."Auditoria_id_auditoria_seq"'::regclass);
 F   ALTER TABLE public.auditorias ALTER COLUMN id_auditoria DROP DEFAULT;
       public          postgres    false    217    216            �           2604    41019    clientes id_cliente    DEFAULT     {   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public."Cliente_id_cliente_seq"'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    219    218            �           2604    41020    departamentos id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public."Departamento_id_departamento_seq"'::regclass);
 L   ALTER TABLE public.departamentos ALTER COLUMN id_departamento DROP DEFAULT;
       public          postgres    false    221    220            �           2604    41021    documentos id_documento    DEFAULT     �   ALTER TABLE ONLY public.documentos ALTER COLUMN id_documento SET DEFAULT nextval('public."Documentos_id_documento_seq"'::regclass);
 F   ALTER TABLE public.documentos ALTER COLUMN id_documento DROP DEFAULT;
       public          postgres    false    223    222            �           2604    41022    mensajes id_mensaje    DEFAULT     {   ALTER TABLE ONLY public.mensajes ALTER COLUMN id_mensaje SET DEFAULT nextval('public."Mensaje_id_mensaje_seq"'::regclass);
 B   ALTER TABLE public.mensajes ALTER COLUMN id_mensaje DROP DEFAULT;
       public          postgres    false    225    224            �           2604    41023    planes id_plan    DEFAULT     r   ALTER TABLE ONLY public.planes ALTER COLUMN id_plan SET DEFAULT nextval('public."Planes_id_Plan_seq"'::regclass);
 =   ALTER TABLE public.planes ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    227    226            �           2604    41024    poligonos id_poligono    DEFAULT     w   ALTER TABLE ONLY public.poligonos ALTER COLUMN id_poligono SET DEFAULT nextval('public."Zona_id_zona_seq"'::regclass);
 D   ALTER TABLE public.poligonos ALTER COLUMN id_poligono DROP DEFAULT;
       public          postgres    false    241    240            �           2604    41025    puntos id_punto    DEFAULT     t   ALTER TABLE ONLY public.puntos ALTER COLUMN id_punto SET DEFAULT nextval('public."Puntos_id_punto_seq"'::regclass);
 >   ALTER TABLE public.puntos ALTER COLUMN id_punto DROP DEFAULT;
       public          postgres    false    229    228            �           2604    41026    sedes id_sede    DEFAULT     o   ALTER TABLE ONLY public.sedes ALTER COLUMN id_sede SET DEFAULT nextval('public."Sede_id_Sede_seq"'::regclass);
 <   ALTER TABLE public.sedes ALTER COLUMN id_sede DROP DEFAULT;
       public          postgres    false    235    234            �           2604    41027 (   sedes_departamentos id_sede_departamento    DEFAULT     �   ALTER TABLE ONLY public.sedes_departamentos ALTER COLUMN id_sede_departamento SET DEFAULT nextval('public."Sede-Departamento_id_SedeDepar_seq"'::regclass);
 W   ALTER TABLE public.sedes_departamentos ALTER COLUMN id_sede_departamento DROP DEFAULT;
       public          postgres    false    232    230            �           2604    41028    tipos_usuarios id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipos_usuarios ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public."Tipo_usuario_id_tipousuario_seq"'::regclass);
 M   ALTER TABLE public.tipos_usuarios ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    237    236            �           2604    41029    usuarios id_usuario    DEFAULT     {   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuario_id_usuario_seq"'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    239    238            �          0    40961    anuncios 
   TABLE DATA           \   COPY public.anuncios (id_anuncio, anuncio, fecha_inicio, fecha_fin, id_usuario) FROM stdin;
    public          postgres    false    214   z�       �          0    40965 
   auditorias 
   TABLE DATA           V   COPY public.auditorias (id_auditoria, operacion, id_usuario, fecha, hora) FROM stdin;
    public          postgres    false    216   ��       �          0    40969    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, nombre, ubicacion, telefono, correo, id_plan, id_usuario, estado_usuario, borrado) FROM stdin;
    public          postgres    false    218   L�       �          0    40973    departamentos 
   TABLE DATA           V   COPY public.departamentos (id_departamento, nombre_departamento, borrado) FROM stdin;
    public          postgres    false    220   i�       �          0    40977 
   documentos 
   TABLE DATA           �   COPY public.documentos (id_documento, titulo, descripcion, id_usuario, hora_subida, fecha_subida, permiso, borrado) FROM stdin;
    public          postgres    false    222   ��       �          0    40981    mensajes 
   TABLE DATA           h   COPY public.mensajes (id_mensaje, contenido, usuario_emisor, usuario_receptor, fecha, hora) FROM stdin;
    public          postgres    false    224   ��       �          0    40985    planes 
   TABLE DATA           a   COPY public.planes (id_plan, nombre_plan, descripcion, precio, estado_plan, borrado) FROM stdin;
    public          postgres    false    226   ɰ       �          0    41013 	   poligonos 
   TABLE DATA           M   COPY public.poligonos (id_poligono, nombre_poligono, id_usuario) FROM stdin;
    public          postgres    false    240   �       �          0    40989    puntos 
   TABLE DATA           J   COPY public.puntos (id_punto, id_poligono, latitud, longitud) FROM stdin;
    public          postgres    false    228   0�       �          0    40999    sedes 
   TABLE DATA           U   COPY public.sedes (id_sede, nombre_sede, ip, borrado, latitud, longitud) FROM stdin;
    public          postgres    false    234   ��       �          0    40993    sedes_departamentos 
   TABLE DATA           ]   COPY public.sedes_departamentos (id_sede_departamento, id_departamento, id_sede) FROM stdin;
    public          postgres    false    230   �       �          0    41003    tipos_usuarios 
   TABLE DATA           F   COPY public.tipos_usuarios (id_tipo_usuario, descripcion) FROM stdin;
    public          postgres    false    236   �       �          0    41007    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre_usuario, id_sededepar, id_tipousuario, nombre, apellido, pregunta, clave, foto_usuario, extension_telefonica, borrado) FROM stdin;
    public          postgres    false    238   9�       �           0    0    Anuncio_id_anuncio_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Anuncio_id_anuncio_seq"', 1, false);
          public          postgres    false    215            �           0    0    Auditoria_id_auditoria_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Auditoria_id_auditoria_seq"', 271, true);
          public          postgres    false    217            �           0    0    Cliente_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Cliente_id_cliente_seq"', 1, false);
          public          postgres    false    219            �           0    0     Departamento_id_departamento_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Departamento_id_departamento_seq"', 1, true);
          public          postgres    false    221            �           0    0    Documentos_id_documento_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Documentos_id_documento_seq"', 1, false);
          public          postgres    false    223            �           0    0    Mensaje_id_mensaje_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Mensaje_id_mensaje_seq"', 1, false);
          public          postgres    false    225            �           0    0    Planes_id_Plan_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Planes_id_Plan_seq"', 1, false);
          public          postgres    false    227            �           0    0    Puntos_id_punto_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Puntos_id_punto_seq"', 28, true);
          public          postgres    false    229            �           0    0 %   Sede-Departamento_id_Departamento_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."Sede-Departamento_id_Departamento_seq"', 1, false);
          public          postgres    false    231            �           0    0 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Sede-Departamento_id_SedeDepar_seq"', 1, true);
          public          postgres    false    232            �           0    0    Sede-Departamento_id_Sede_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Sede-Departamento_id_Sede_seq"', 1, false);
          public          postgres    false    233            �           0    0    Sede_id_Sede_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Sede_id_Sede_seq"', 1, true);
          public          postgres    false    235            �           0    0    Tipo_usuario_id_tipousuario_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Tipo_usuario_id_tipousuario_seq"', 1, true);
          public          postgres    false    237            �           0    0    Usuario_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Usuario_id_usuario_seq"', 1, true);
          public          postgres    false    239            �           0    0    Zona_id_zona_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Zona_id_zona_seq"', 8, true);
          public          postgres    false    241            �           2606    41031    sedes id_Sede 
   CONSTRAINT     R   ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT "id_Sede" PRIMARY KEY (id_sede);
 9   ALTER TABLE ONLY public.sedes DROP CONSTRAINT "id_Sede";
       public            postgres    false    234            �           2606    41033    planes id_plan 
   CONSTRAINT     Q   ALTER TABLE ONLY public.planes
    ADD CONSTRAINT id_plan PRIMARY KEY (id_plan);
 8   ALTER TABLE ONLY public.planes DROP CONSTRAINT id_plan;
       public            postgres    false    226            �           2606    41035    anuncios pk_anuncio 
   CONSTRAINT     Y   ALTER TABLE ONLY public.anuncios
    ADD CONSTRAINT pk_anuncio PRIMARY KEY (id_anuncio);
 =   ALTER TABLE ONLY public.anuncios DROP CONSTRAINT pk_anuncio;
       public            postgres    false    214            �           2606    41037    auditorias pk_auditoria 
   CONSTRAINT     _   ALTER TABLE ONLY public.auditorias
    ADD CONSTRAINT pk_auditoria PRIMARY KEY (id_auditoria);
 A   ALTER TABLE ONLY public.auditorias DROP CONSTRAINT pk_auditoria;
       public            postgres    false    216            �           2606    41039    clientes pk_cliente 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);
 =   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_cliente;
       public            postgres    false    218            �           2606    41041    departamentos pk_departamento 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);
 G   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT pk_departamento;
       public            postgres    false    220            �           2606    41043    documentos pk_documentos 
   CONSTRAINT     `   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT pk_documentos PRIMARY KEY (id_documento);
 B   ALTER TABLE ONLY public.documentos DROP CONSTRAINT pk_documentos;
       public            postgres    false    222            �           2606    41045    mensajes pk_mensaje 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT pk_mensaje PRIMARY KEY (id_mensaje);
 =   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT pk_mensaje;
       public            postgres    false    224            �           2606    41047    puntos pk_puntos 
   CONSTRAINT     T   ALTER TABLE ONLY public.puntos
    ADD CONSTRAINT pk_puntos PRIMARY KEY (id_punto);
 :   ALTER TABLE ONLY public.puntos DROP CONSTRAINT pk_puntos;
       public            postgres    false    228            �           2606    41049     sedes_departamentos pk_sededepar 
   CONSTRAINT     p   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT pk_sededepar PRIMARY KEY (id_sede_departamento);
 J   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT pk_sededepar;
       public            postgres    false    230            �           2606    41051    tipos_usuarios pk_tipousuario 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT pk_tipousuario PRIMARY KEY (id_tipo_usuario);
 G   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT pk_tipousuario;
       public            postgres    false    236            �           2606    41053    usuarios pk_usuario 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuario;
       public            postgres    false    238            �           2606    41055    poligonos pk_zona 
   CONSTRAINT     X   ALTER TABLE ONLY public.poligonos
    ADD CONSTRAINT pk_zona PRIMARY KEY (id_poligono);
 ;   ALTER TABLE ONLY public.poligonos DROP CONSTRAINT pk_zona;
       public            postgres    false    240            �           1259    41056    fki_d    INDEX     B   CREATE INDEX fki_d ON public.documentos USING btree (id_usuario);
    DROP INDEX public.fki_d;
       public            postgres    false    222            �           1259    41057    fki_fk_anunciousuario    INDEX     P   CREATE INDEX fki_fk_anunciousuario ON public.anuncios USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_anunciousuario;
       public            postgres    false    214            �           1259    41058    fki_fk_auditoriausuario    INDEX     T   CREATE INDEX fki_fk_auditoriausuario ON public.auditorias USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_auditoriausuario;
       public            postgres    false    216            �           1259    41059    fki_fk_clienteplan    INDEX     J   CREATE INDEX fki_fk_clienteplan ON public.clientes USING btree (id_plan);
 &   DROP INDEX public.fki_fk_clienteplan;
       public            postgres    false    218            �           1259    41060    fki_fk_clienteusuario    INDEX     P   CREATE INDEX fki_fk_clienteusuario ON public.clientes USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_clienteusuario;
       public            postgres    false    218            �           1259    41061    fki_fk_departamento    INDEX     ^   CREATE INDEX fki_fk_departamento ON public.sedes_departamentos USING btree (id_departamento);
 '   DROP INDEX public.fki_fk_departamento;
       public            postgres    false    230            �           1259    41062    fki_fk_documentousuario    INDEX     T   CREATE INDEX fki_fk_documentousuario ON public.documentos USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_documentousuario;
       public            postgres    false    222            �           1259    41063    fki_fk_iddepartamento    INDEX     `   CREATE INDEX fki_fk_iddepartamento ON public.sedes_departamentos USING btree (id_departamento);
 )   DROP INDEX public.fki_fk_iddepartamento;
       public            postgres    false    230            �           1259    41064    fki_fk_idpoligono    INDEX     K   CREATE INDEX fki_fk_idpoligono ON public.puntos USING btree (id_poligono);
 %   DROP INDEX public.fki_fk_idpoligono;
       public            postgres    false    228            �           1259    41065    fki_fk_idsede    INDEX     P   CREATE INDEX fki_fk_idsede ON public.sedes_departamentos USING btree (id_sede);
 !   DROP INDEX public.fki_fk_idsede;
       public            postgres    false    230            �           1259    41066    fki_fk_poligonopunto    INDEX     Q   CREATE INDEX fki_fk_poligonopunto ON public.poligonos USING btree (id_poligono);
 (   DROP INDEX public.fki_fk_poligonopunto;
       public            postgres    false    240            �           1259    41067    fki_fk_puntoszona    INDEX     K   CREATE INDEX fki_fk_puntoszona ON public.puntos USING btree (id_poligono);
 %   DROP INDEX public.fki_fk_puntoszona;
       public            postgres    false    228            �           1259    41068    fki_fk_sede    INDEX     N   CREATE INDEX fki_fk_sede ON public.sedes_departamentos USING btree (id_sede);
    DROP INDEX public.fki_fk_sede;
       public            postgres    false    230            �           1259    41069    fki_fk_sededepar    INDEX     M   CREATE INDEX fki_fk_sededepar ON public.usuarios USING btree (id_sededepar);
 $   DROP INDEX public.fki_fk_sededepar;
       public            postgres    false    238            �           1259    41070    fki_fk_tipousuario    INDEX     Q   CREATE INDEX fki_fk_tipousuario ON public.usuarios USING btree (id_tipousuario);
 &   DROP INDEX public.fki_fk_tipousuario;
       public            postgres    false    238            �           1259    41071    fki_fk_usuarioanuncio    INDEX     P   CREATE INDEX fki_fk_usuarioanuncio ON public.anuncios USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_usuarioanuncio;
       public            postgres    false    214            �           1259    41072    fki_fk_usuarioauditoria    INDEX     T   CREATE INDEX fki_fk_usuarioauditoria ON public.auditorias USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_usuarioauditoria;
       public            postgres    false    216            �           1259    41073    fki_fk_usuarioemisor    INDEX     S   CREATE INDEX fki_fk_usuarioemisor ON public.mensajes USING btree (usuario_emisor);
 (   DROP INDEX public.fki_fk_usuarioemisor;
       public            postgres    false    224            �           1259    41074    fki_fk_usuarioreceptor    INDEX     W   CREATE INDEX fki_fk_usuarioreceptor ON public.mensajes USING btree (usuario_receptor);
 *   DROP INDEX public.fki_fk_usuarioreceptor;
       public            postgres    false    224            �           1259    41075    fki_fk_usuariosededepar    INDEX     T   CREATE INDEX fki_fk_usuariosededepar ON public.usuarios USING btree (id_sededepar);
 +   DROP INDEX public.fki_fk_usuariosededepar;
       public            postgres    false    238            �           1259    41076    fki_fk_usuariotipousuario    INDEX     X   CREATE INDEX fki_fk_usuariotipousuario ON public.usuarios USING btree (id_tipousuario);
 -   DROP INDEX public.fki_fk_usuariotipousuario;
       public            postgres    false    238            �           1259    41077    fki_fk_zonausuario    INDEX     N   CREATE INDEX fki_fk_zonausuario ON public.poligonos USING btree (id_usuario);
 &   DROP INDEX public.fki_fk_zonausuario;
       public            postgres    false    240            �           1259    41078    fki_g    INDEX     A   CREATE INDEX fki_g ON public.poligonos USING btree (id_usuario);
    DROP INDEX public.fki_g;
       public            postgres    false    240            �           1259    41079    fki_id_Departamento    INDEX     `   CREATE INDEX "fki_id_Departamento" ON public.sedes_departamentos USING btree (id_departamento);
 )   DROP INDEX public."fki_id_Departamento";
       public            postgres    false    230            �           1259    41080    fki_id_Sede    INDEX     P   CREATE INDEX "fki_id_Sede" ON public.sedes_departamentos USING btree (id_sede);
 !   DROP INDEX public."fki_id_Sede";
       public            postgres    false    230            �           1259    41081    fki_k    INDEX     ?   CREATE INDEX fki_k ON public.puntos USING btree (id_poligono);
    DROP INDEX public.fki_k;
       public            postgres    false    228            �           1259    41082    fki_o    INDEX     @   CREATE INDEX fki_o ON public.anuncios USING btree (id_usuario);
    DROP INDEX public.fki_o;
       public            postgres    false    214            �           1259    41083    fki_u    INDEX     @   CREATE INDEX fki_u ON public.clientes USING btree (id_usuario);
    DROP INDEX public.fki_u;
       public            postgres    false    218            �           2606    41084    auditorias fk_auditoriausuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.auditorias
    ADD CONSTRAINT fk_auditoriausuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.auditorias DROP CONSTRAINT fk_auditoriausuario;
       public          postgres    false    238    216    3296            �           2606    41089    clientes fk_clienteplan    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_clienteplan FOREIGN KEY (id_plan) REFERENCES public.planes(id_plan) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 A   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_clienteplan;
       public          postgres    false    226    218    3273            �           2606    41094    clientes fk_clienteusuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_clienteusuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 D   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_clienteusuario;
       public          postgres    false    238    218    3296            �           2606    41099 #   sedes_departamentos fk_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 M   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT fk_departamento;
       public          postgres    false    220    3263    230            �           2606    41104    documentos fk_documentousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT fk_documentousuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.documentos DROP CONSTRAINT fk_documentousuario;
       public          postgres    false    222    3296    238            �           2606    41109    poligonos fk_poligonopunto    FK CONSTRAINT     �   ALTER TABLE ONLY public.poligonos
    ADD CONSTRAINT fk_poligonopunto FOREIGN KEY (id_poligono) REFERENCES public.poligonos(id_poligono) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY public.poligonos DROP CONSTRAINT fk_poligonopunto;
       public          postgres    false    240    240    3301            �           2606    41114    puntos fk_poligonopunto    FK CONSTRAINT     �   ALTER TABLE ONLY public.puntos
    ADD CONSTRAINT fk_poligonopunto FOREIGN KEY (id_poligono) REFERENCES public.poligonos(id_poligono) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public.puntos DROP CONSTRAINT fk_poligonopunto;
       public          postgres    false    3301    228    240            �           2606    41119    sedes_departamentos fk_sede    FK CONSTRAINT     �   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT fk_sede FOREIGN KEY (id_sede) REFERENCES public.sedes(id_sede) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 E   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT fk_sede;
       public          postgres    false    230    234    3288            �           2606    41124    mensajes fk_usuarioemisor    FK CONSTRAINT     �   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT fk_usuarioemisor FOREIGN KEY (usuario_emisor) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 C   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT fk_usuarioemisor;
       public          postgres    false    238    3296    224            �           2606    41129    mensajes fk_usuarioreceptor    FK CONSTRAINT     �   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT fk_usuarioreceptor FOREIGN KEY (usuario_receptor) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 E   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT fk_usuarioreceptor;
       public          postgres    false    238    3296    224            �           2606    41134    usuarios fk_usuariosededepar    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuariosededepar FOREIGN KEY (id_sededepar) REFERENCES public.sedes_departamentos(id_sede_departamento) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 F   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_usuariosededepar;
       public          postgres    false    238    230    3286            �           2606    41139    usuarios fk_usuariotipousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuariotipousuario FOREIGN KEY (id_tipousuario) REFERENCES public.tipos_usuarios(id_tipo_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_usuariotipousuario;
       public          postgres    false    238    3290    236            �           2606    41144    anuncios id_anunciousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.anuncios
    ADD CONSTRAINT id_anunciousuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 D   ALTER TABLE ONLY public.anuncios DROP CONSTRAINT id_anunciousuario;
       public          postgres    false    238    3296    214            �      x������ � �      �   �  x�}�ˮ�8D׭I RO{��dLf������l�A����ږJ|-�_���%/�Z���M�K�Y�YF��3k*�Ϣ��~��q�ڎ��z��Yg�}����8EҌ�S[JG��Z�6���Sj�A�$��=I��#I��6�S,R��9I�!6<6:����{/�Lr���Ϸ�YH��#�0h�)�w�¨��=���USk{���-m%�H��<Rۈb\��c�hS�G��O���;�o�R�FI=
!���	��{��@�=�!�yjM=VK�g��V-pͩG�v�U���B@��}�=����}x�4\h-�2��p��PuZ]�����B뢍:��.]�3�G��'ǡ�/x�i���-_g����g�i���6�%~-x�`3�(��l�#�A3�L-ez�Ɍ#����];���LGc�{�}�C6����p��І.�(�WN�F1��~lc�a���2s���(:u��6Af���j��(9�2PTOt��Yi��rg�"E�{{hE?��N�(R���^t2�$�װE+�ߋ�E���3���<�����@�;5�Aٿ3�9\t5agJ_!a�U&}��Z\f"�83�%��&9كᘰ�g�X�;{�	��	��4w�E�O�?P}e�8˴x����l�{�x��`���3��ܚ?�a�D��M�¬�Z�Ei�nw��Oo�bHZ���놟��d=�~��?϶8�^�۞�fJ�;���]��'�t�����|9�+[,m��a�z���҇�1��v���M#Pnq�2Z�����ڎ�_���G���ȫt��~�n�{86�g�b�B{"3
�� ������4�e{B�>��_�h\�ב+�����y���W��;��q�td r6�f�kE���\D��~ۋ����G�M��G��)G��z͆�<������p��z����[m����GK�2=�#Ի�M��z�Q�զ?�.c�Ɩ��e-���aܭ���u̵�Xs����{4�7����o�(�Ӈ~�Y�'��Q��{�Q�ۗX�f�Wݧ������VAj>��o,zX���h�2a�z*�s�'���j�MQ�T]�-ʒ	�"��ⳞCJ��*f��d�Pnܸ�h
X싒jdϞG�)��䨪�	5[`GC�����ŧ��S�xsWi�lT �l����ޥܘ�P�a�p���[�٭��*?<�C´D��A�}\���ݍ�y�D�-(�yAk��p4��0�^#݈��F�-��A~��n�`W��\΍�P�xS��T�F�mЙ��p�Q�=�5��Y�6���f���¬��^��悉ba��L7f�&�q�r�JL7f�ō1�j0Q,\��V����|w0Q,����;պ��`�XxX��čY��N�IS����Q�}��aE��T�iB{��p�d+��j��i����#T�0zΟ�)�� ��      �      x������ � �      �      x�3�
���L����� ��      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x�3�tJ,*,�,��M-��4�2�t,(-J��9}�����lΐ���J��=... Ǖ�      �   t  x�5��u�@C�L/�y��^������d�V�p�ܒ��)֓�u���>�t���������X�1R��G�#�S�����(t�Ž�ƿf��x/d�-�	��G��cm-�P���XR��E��ƻ�ME/Z�b�,�j}�4�G�s�u��l-���u�����i�3V #YwT��D��,X�	}+���HL���dI�)�d��+����:��.��ܣ\j�|�Р�T�cv�5��+��0]8�������$���R�j:%��&J����%�KDG����1�9��q8�~�~�� vJM�C����&ͤEwE�ѩ�L5i]����<�͒&��hu	���5�N���Zs+��ܹT����9��      �   -   x�3�t/M�K,J�4�4�34��34�32�L�4�34\1z\\\ ɆN      �      x�3�4�4����� �X      �      x�3�LL�������� $�      �   O   x�3��*M�316�4B/ �3,3''5=����~ǔ��<{NC#ccS�Ĝ��̂���Č�H�����Đ3�+F��� v{L     