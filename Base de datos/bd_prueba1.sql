PGDMP                 
         {            prueba    14.5    14.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    prueba    DATABASE     e   CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE prueba;
                postgres    false            ?            1259    16396    persona    TABLE     ?   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    correo character varying(45) NOT NULL,
    telefono character varying NOT NULL,
    clave character varying(10) NOT NULL
);
    DROP TABLE public.persona;
       public         heap    postgres    false            ?            1259    16395    persona_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public          postgres    false    210            ?           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public          postgres    false    209            \           2604    16399 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?          0    16396    persona 
   TABLE DATA           F   COPY public.persona (id, nombre, correo, telefono, clave) FROM stdin;
    public          postgres    false    210   ?
       ?           0    0    persona_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.persona_id_seq', 3, true);
          public          postgres    false    209            ^           2606    16403    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    210            ?   Z   x?3?LI??L???L????/2qH?M???K???464022074??*?2?LMIO,?X???$??9s2?R!?Cr~QQj>LD?+F??? $q     