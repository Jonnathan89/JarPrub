PGDMP                     
    x            credito_consumo_srv    9.5.23    12.3     H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    26755    credito_consumo_srv    DATABASE     �   CREATE DATABASE credito_consumo_srv WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
 #   DROP DATABASE credito_consumo_srv;
                postgres    false            L           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    26758    cliente_srv    TABLE     `   CREATE TABLE public.cliente_srv (
    id integer NOT NULL,
    nombre character varying(100)
);
    DROP TABLE public.cliente_srv;
       public            postgres    false            �            1259    26756    cliente_srv_id_seq    SEQUENCE     {   CREATE SEQUENCE public.cliente_srv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cliente_srv_id_seq;
       public          postgres    false    182            M           0    0    cliente_srv_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cliente_srv_id_seq OWNED BY public.cliente_srv.id;
          public          postgres    false    181            �            1259    26786    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    26766    parametro_srv    TABLE     $  CREATE TABLE public.parametro_srv (
    id integer NOT NULL,
    id_cliente_srv integer NOT NULL,
    id_parametro_padre integer,
    parametro_padre boolean DEFAULT true NOT NULL,
    nombre character varying(100),
    valor character varying(250),
    descripcion character varying(500)
);
 !   DROP TABLE public.parametro_srv;
       public            postgres    false            �            1259    26764    parametro_srv_id_seq    SEQUENCE     }   CREATE SEQUENCE public.parametro_srv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.parametro_srv_id_seq;
       public          postgres    false    184            N           0    0    parametro_srv_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.parametro_srv_id_seq OWNED BY public.parametro_srv.id;
          public          postgres    false    183            �           2604    26761    cliente_srv id    DEFAULT     p   ALTER TABLE ONLY public.cliente_srv ALTER COLUMN id SET DEFAULT nextval('public.cliente_srv_id_seq'::regclass);
 =   ALTER TABLE public.cliente_srv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    182    181    182            �           2604    26769    parametro_srv id    DEFAULT     t   ALTER TABLE ONLY public.parametro_srv ALTER COLUMN id SET DEFAULT nextval('public.parametro_srv_id_seq'::regclass);
 ?   ALTER TABLE public.parametro_srv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    184    183    184            B          0    26758    cliente_srv 
   TABLE DATA           1   COPY public.cliente_srv (id, nombre) FROM stdin;
    public          postgres    false    182   �       D          0    26766    parametro_srv 
   TABLE DATA           |   COPY public.parametro_srv (id, id_cliente_srv, id_parametro_padre, parametro_padre, nombre, valor, descripcion) FROM stdin;
    public          postgres    false    184   �       O           0    0    cliente_srv_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cliente_srv_id_seq', 11, true);
          public          postgres    false    181            P           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    185            Q           0    0    parametro_srv_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.parametro_srv_id_seq', 59, true);
          public          postgres    false    183            �           2606    26763    cliente_srv cliente_srv_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente_srv
    ADD CONSTRAINT cliente_srv_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.cliente_srv DROP CONSTRAINT cliente_srv_pkey;
       public            postgres    false    182            �           2606    26775     parametro_srv parametro_srv_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.parametro_srv
    ADD CONSTRAINT parametro_srv_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.parametro_srv DROP CONSTRAINT parametro_srv_pkey;
       public            postgres    false    184            �           2606    26776 /   parametro_srv parametro_srv_id_cliente_srv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_srv
    ADD CONSTRAINT parametro_srv_id_cliente_srv_fkey FOREIGN KEY (id_cliente_srv) REFERENCES public.cliente_srv(id);
 Y   ALTER TABLE ONLY public.parametro_srv DROP CONSTRAINT parametro_srv_id_cliente_srv_fkey;
       public          postgres    false    184    182    1994            �           2606    26781 3   parametro_srv parametro_srv_id_parametro_padre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_srv
    ADD CONSTRAINT parametro_srv_id_parametro_padre_fkey FOREIGN KEY (id_parametro_padre) REFERENCES public.parametro_srv(id);
 ]   ALTER TABLE ONLY public.parametro_srv DROP CONSTRAINT parametro_srv_id_parametro_padre_fkey;
       public          postgres    false    184    1996    184            B   t   x��K�0���]���{�n�� �$�L����'��[o�:X0{o�H���W�ᙵs(�un��Z!�r�u����C�}�O)S�K��j��yK���ᬹ!�e�)��+>' ?m{+�      D   �  x�}�_o�0ş��ä"���2T�Vi�ՠ�&UC�c�7g��v�>���=T�������p9J��y�u��k��Ҩ�u�b]�H ���79�m1�b�ڵ�c��D�Ozl��d�����U[!x_*m��i�\}���"!{�,w�!�3��:uB��p��YLo#��{n��n}m˺)�z&���,N�lr]z�1J*c�ya�p(�Д�Z1� n�F:c�x�(���������5J�I�P��Y�¸;ɠ\9�7�[��E-���ߟB��r�ݨtm��qD���f׋������H�`B.st���,f?_?^�4���N�C14C�x��rc]�D'�I�信.&`�v�,�a�+���WV�پyw7���BN�"��BpH'��lu�V�e����.�ce�k����g ��S��Jٵ�ʖ�l�.d�ÿ0ųQ:&��ѫ~�1}���K�tn�+[���h��O͍�MA�O���4d|��31��vg��M��$����G0Ї���$�GR�j'�5b�ۏ��	�����6c���K��Yf��nC�_M�Hv؎��$H��q
�b;� w�2�e��y�VqA��V�y���~�]�I��܍���;�������P;۬� گV�i|��'}N2$ZC�p�
���+���;���^o�\_7a/Fe�����.�䁡�5F\ȋH\4Td�;C	�_��i<��ז�     