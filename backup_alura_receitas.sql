PGDMP         6                x            alura_receita    10.7    11.2 l    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24812    alura_receita    DATABASE     �   CREATE DATABASE alura_receita WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE alura_receita;
             postgres    false            �            1259    24844 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    24842    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    24854    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    24852    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    24836    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    24834    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    24862 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    24872    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    24870    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    24860    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    24880    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    24878 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    24940    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    24938    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    24826    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    24824    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    24815    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    24813    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    25020    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    24973    receitas_receita    TABLE     �  CREATE TABLE public.receitas_receita (
    id integer NOT NULL,
    nome_receita character varying(200) NOT NULL,
    ingredientes text NOT NULL,
    modo_de_preparo text NOT NULL,
    tempo_preparo integer NOT NULL,
    rendimento character varying(100) NOT NULL,
    categoria character varying(100) NOT NULL,
    data_receita timestamp with time zone NOT NULL,
    pessoa_id integer NOT NULL,
    publicada boolean NOT NULL,
    foto_receita character varying(100) NOT NULL
);
 $   DROP TABLE public.receitas_receita;
       public         postgres    false            �            1259    24971    receitas_receita_id_seq    SEQUENCE     �   CREATE SEQUENCE public.receitas_receita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.receitas_receita_id_seq;
       public       postgres    false    215            �           0    0    receitas_receita_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.receitas_receita_id_seq OWNED BY public.receitas_receita.id;
            public       postgres    false    214            �
           2604    24847    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    24857    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    24839    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    24865    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    24875    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    24883    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    24943    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    24829    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    24818    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    24976    receitas_receita id    DEFAULT     z   ALTER TABLE ONLY public.receitas_receita ALTER COLUMN id SET DEFAULT nextval('public.receitas_receita_id_seq'::regclass);
 B   ALTER TABLE public.receitas_receita ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            t          0    24844 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   M�       v          0    24854    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   j�       r          0    24836    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       x          0    24862 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   Ï       z          0    24872    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ݐ       |          0    24880    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       ~          0    24940    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   �       p          0    24826    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   7�       n          0    24815    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    25020    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    216   ��       �          0    24973    receitas_receita 
   TABLE DATA               �   COPY public.receitas_receita (id, nome_receita, ingredientes, modo_de_preparo, tempo_preparo, rendimento, categoria, data_receita, pessoa_id, publicada, foto_receita) FROM stdin;
    public       postgres    false    215   2�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 8, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
            public       postgres    false    196            �           0    0    receitas_receita_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receitas_receita_id_seq', 7, true);
            public       postgres    false    214            �
           2606    24969    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    24906 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    24859 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    24849    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    24892 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    24841 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    24877 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    24921 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    24867    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    24885 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            �
           2606    24935 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    24963     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �
           2606    24949 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    24833 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    24831 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    24823 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �
           2606    25027 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    216            �
           2606    24981 &   receitas_receita receitas_receita_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.receitas_receita
    ADD CONSTRAINT receitas_receita_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.receitas_receita DROP CONSTRAINT receitas_receita_pkey;
       public         postgres    false    215            �
           1259    24970    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    24907 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    24908 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    24893 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    24923 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    24922 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    24937 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �
           1259    24936 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    24964     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �
           1259    24960 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            �
           1259    24961 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            �
           1259    25029 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    216            �
           1259    25028 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    216            �
           1259    24982 #   receitas_receita_pessoa_id_a8898e91    INDEX     e   CREATE INDEX receitas_receita_pessoa_id_a8898e91 ON public.receitas_receita USING btree (pessoa_id);
 7   DROP INDEX public.receitas_receita_pessoa_id_a8898e91;
       public         postgres    false    215            �
           2606    24900 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2754            �
           2606    24895 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    205    2759            �
           2606    24886 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    199    201    2749            �
           2606    24915 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2759    203            �
           2606    24910 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    207    209    2767            �
           2606    24929 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2754    201    211            �
           2606    24924 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2767    211    207            �
           2606    24950 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2749    199    213            �
           2606    24955 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2767    207    213            �
           2606    25015 D   receitas_receita receitas_receita_pessoa_id_a8898e91_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.receitas_receita
    ADD CONSTRAINT receitas_receita_pessoa_id_a8898e91_fk_auth_user_id FOREIGN KEY (pessoa_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.receitas_receita DROP CONSTRAINT receitas_receita_pessoa_id_a8898e91_fk_auth_user_id;
       public       postgres    false    2767    207    215            t      x������ � �      v      x������ � �      r   ,  x�]�݊�0����*�������F����UQ�K�:~N&���y�q�ꓪi��j��8��8Y���Oշ��~!*e�Г��Q�����َ"r�ymB�2�����G[� ��$��M�J�5di�a�nR6����s7�&�pa�E�Ey;]a$j�CeD9S�TJ�ix�&�H��.�}�;�@r]u��� ���R
^3M&��Ӻ���W���MO�p�f�G�N&�C��.Y�#��p��X��	#(�ц�<�"�v��97�a�g�k��8Y�|0�m|`���= �:���Z�qRb�      x   
  x�m�Kk�@���+�pb�\G
iHc�M,�
E�<4N��!4���Ǣ)=���:߽���f�\�2�b����$�o��0�}�N�Av�w:JFS\�?f�q쵼���=�/��+����O����x�����>�dM��J2BH�U�72+*�E�n��\0n9�]��۠�c��t�mx_�y�ƣǋMļ���f��4沊��D�m{Z'�w�v�XG8�@���'VUU����i��Z������l����es���O�a�Ma�      z      x������ � �      |      x������ � �      ~     x��ѻn�0����;��lD�,��niL 28I�(�^�.�Z*y�r��:���a�*��PZp,�L�2A��ɐ�g�ގ�`{���[���Mg]=��6>]���Lm����
4bVN�2�RM��uC���|�θ�-amF襰��)�x������rF�\ܷ�`c�a�T�'�w��V��9[b�gX�'���yS>�K�j&���_SXywV���ͥ	�;!1�,G&����|���r� �u��*�d�/��8��GE��|�/      p   ^   x�M�K
�0�y��_�M�Aږ$]���"�����=s�:r�"i�hRѓ+�Sf9�jH�[6I%c|�(&�)ڽYͬ�L�ϭ`i \]�,6      n     x����n� �����H4��,+!֡.�m�W��/��*+�	���93j:73�p���  Rv���������_ �(yq!\� g '��5|+ �yR�F_G;K8��IB����@�My3�O���N��ΐ �&{2ȓuJw��I��W݇�]t��jA�I�ov�G4ہJ'jң���	����C0^�ƏvYRHI�F��3��V�R)YB��"j]�bFm�#����(�P�+%-97��=Kɳ�
��2��d����C�肑{6���]�/�f�U��� i�5�l�v��S����K.���y5�e���.bf��#Rp�j΁�Q����B��,��0��(��n�����^0H�s�Ȩٻ��KC���1.2�m���p�� �h�H�d�/�]|yY���I��=�S��z�3�N_� ��a����d�6U����9F;+;�U)L�	�wR��$�{ �GLv��>�8�
d��F���?=��b��Dr����N�����      �   g  x�U��n�0���S�$2?6�H=�ʂ@�#"���`Jl��vC�ӗ�a��Ό�ۛ��D������>�M�
��1��}��/Nأ/b>��c�󾔟,���*�K����>h<�]���h���~�hG�
�A�o����1�����1�����&K��Oc(��B�YyD�0�9	N�[�E�����,]�1�Y�M���c��H���V�''�;W����3ӓ�!��Tum͌4�����Y�"Uc�ǫe��z��U���'t~!�vr&���i~�Çil�__���.�<	���$\f�y�[^-���;N,�/%�%_�^0�b��Eo+Q�����;�w�E������z�kь�      �      x��[͎#7�>�O�� U�$K�RUu���m/�p�x��4�LJ�=�I��)��i.�}��޷vF�S�^�e�&�$�E�d������R&�`�|�E���~kK�r����R�f����f�La����X�-2�[u�\�Fiu3���t�����w�"�tݚb���Tk��q�������|���6�)���x��[�0�z�?���������x��Mk�ݭ-wE��Oc���P5��
7���}g�?he�ںQ$��z�.R٪���ЗS��He��7�UA"�}�s�sM]�TVM�s�0 �E��i��Uo�����ޚ����̌�x�Vo�$�ʱ�]E�wS�a�ʋfk�qm�\��'Vi���d��YR\溷SŻ��NW�ha���?�U�)*�����X�����rӘ��C���4;�
��ڔ����k�,�i����?n:� ������������J7F,h�~�,Sh^�9�S�I�5-��k�[vf�����*j��*5�����"�^Cʙ�ga�z��$��G����u0R�C���Z���T�Ak�粑�8x�q��S������M�(R2	���o/�=���2���-cx��?�]���iG��j0Ω(�7����ῤX�@@�΋�!֬b���{}G/ú4�i�b=��NoFv6��MT�@�I�d�h���so����!�P�f<�/t�G�Akr���p �xG[%P�LTaGQV�#l�ۢ�L�����%Y�ӧ��HW�{[�`����E�]��7QsA|�`�?-2z��zP�#s�Li���R+�
��FĠ%7 �N����gl�S�u��~��+�e�OU��1+E���qݰr;p"��w(����U�a�^�}ĊO�ql���R��r
�CP��e�4�7�!M�zKd��������g������wM#>C)�Cpv 6�ë�848�j�����Sx� �C��0'�Z�!����Z���	Ђ0Y��Dy����a�dE�c-�
L��v�lix��!�~�ƺ�\�V�gv����W��쟿��!Va�� �B=�x";t�7 �Wu�8�Z�Ǝ�I ���MzTg�.e1��֍�tԅ�K�9��f�@���0��F��A��+�5��2�3]=�v�+��{��4f�$�����$��0߻��CÞ�a���&�	֦>J	&�S��X�� ���4����کkP
��y�����k��P�(5�z/`Jl��� p�O������1��d�L���h:�uʼ�+�q�̒R�I
�c�)��K�|XZu]�aC��V���b��?!���fĩ�2�-f��dv3�ߪٓ����b9�������̮F�Q;Z[(�������O��OI�W�y1�l�����擫�׈C��д-����P�������V��+ȯ^�7Ԇ� �W#N�3+Ⱥo�ҳ0��0R��GmaU�W�����B[~�Iy���h��������TUd��"3Sox���3�$�g�����9�<Ey ��x��4�3l��[$�̔��1��<=�����6�ԱFR�&1�nƧ���>vK���s{D�^� �KC�mX/�IӴ�����_�g�=�`�i8�_W@"��n�o��߄0s "��Ƴ��X��N�4NtB�	h)d0�aY߶h})2�R,�qaK+�U�-C�˘��y\GME^(��	g�^4=�t�L!��1Y�e�D��	.E�o��D����k�X���J��g\�H�&Ƅ2�JGMZ����ɣ�o`u��z�e�a����[��&��]8�HF���{��+����]A �7�i�И�f��xo+$�cC�Y�8�4z�,wL�����i	�:IH@,������`�0B9	!��"ee�0ae�?f��XѹGjK��P��,�b���)��'����VP`�M�S$`��$E�ʴDp�D�����yR��@ED!�'L!�)�����ަ�-�c�KY*�������sq��"[����*8*ٹ�>V���Β��@�c6ޡV�����:�u��&Mt���l~?��.�n�W�g�4���ks�i.�4w=���-���s�G�t<Z��|�BY�����Qu膓�]�7iW�Ic2�I7���V+{8�=��z~�ZZ{�I^(��hld��'#�2��%-��.'襀`��>�<�8Q�>K�3$`K�g[[p�����(����U�=�H82�UB�n	@>֤ g(Y�B���F��$���u2n8�AVZ�)�F�i��=%5��!-������~))�L�^h��LW��اϞ�)ah7�ע��H��]�_]�_-���'wWg�6�����_4+~�@���wҘ3T}�Ú)$rY0�5y��<����9g��Þ�-�**M�_�wB��>!@e�ݹ�)S�c*v��	��+�V ,�??&N��rYW��mE�t�1ʙ�+2/S"	E썾�b��J �ʻUhIb�Bo\��e�-ۭۿ�� ���a�Ċ�x1�Ұ���zR}����/Q��,R�Jލ������O��*�X����x 1C_r�4EX:@�Bl�%�L�.�$y�E@��y�&|�[�|V��o7��֤E+�����H��͘$�Fx�L��$�:��X_���T�RC��S�RE��RW�*7��r��h���!^�|�2�>HîP�����<!x %�oζ;�W���oHA����6�t���"����=ӭ�2�9x�y� ���Gj����u��XT���M)$l�����k�;�9�����0wy:�$��/�Ow@8�*�%/�.tLS�U2a��@z��~ӱ7��f˶��Z��
P����x�Q �i�phz
,0$]���)��U�CyX���j%���\抎NxH�O1V���)�Չ03����k��2����'��I�^��v�0˳� 1�E�n�WQҵ�.8�Xp��C"�)�	.ˍ�ڤ���1��J~)�h����=��s����4䶗�xl��� �dɥ$�%�^�>`�]��2��*���ڑ�59*tá�U7�j����/WQ��l�-z����������a�k?R.f�QT�s�C馧�'l5,?<"
K$"`k|xRir�q�ww?�����]�γ����n~=�/gw�O&l�?;��]0\��ԍ�����J8tIk.~�.�R�ty�����{*�������ݞꨅ��~�xa��J��2{�~1�5�qH���������� u=����};��t��v��~9e;<���2"x�G@�� ��4�#X;��I��t��O 8�Xc:�r��:@���@�xe2�S�g�~�����t¬�	�o����g��}.��?'�k�Yr�p! #��voƼ{So���x'I��������O���b�f���W�W]W���Q��q]%�k��S��-��R���^ V�H?�XW�j:���	V����1��zZt�$�׎*���#��8is���#��\�٩�ƫ���)�$/�k!y>:S&D9`��G�b��-���9Cf&������Gwb��a�C�7$]LD�IC�^/�(IK1���:Yj��SR�#�o*���L.-��yM���$؍O
����ud�,�K���Q�@r	���`H(��m��q1�f@L~]Ap� %�!?���=����ȑ�l��De�A�}a|���Ꚗ�O��p��yr�˕�Tp(c��f�����r��O�+j�o0��ɰ}{�#��ϗ�'�˛��Y�T
�a���+ڿ�zv&LU���p�}���/�}�l>�殓�D�l1�G͓v�»���F�?�ѩΘ�����	m��R�ɮw��o�\H6(�?R�ޞm��&ۢn��=���j~\��ןF�K�2dKM�e��H��?$U�O�pn�L��1��W5$9ƓD��ĸ���d�~��
Y6P?��̚�n��1����M�M��K
?*�bg~8�?Z�� N�D���F.G6�@�69߅�Xr��׊�=89H���Թ}+�ųܴ�x� �  �H�Y�	�_|��-�y PO7��Ӗ�`����<���mWrz�K����ԁ���k�����<��|�W+����v�6�#��R&Z/"fo�,uG��,��|45��]���B쨨�%���䰑��_pT"����X�$l��KM_���TCtH��	���]��}O߭����z���&�����4y�.=޶뛛��و���ى�y{��˲�Tk�������Q<�#f���Ag�7����O,�YC�3 Q;?�:*�N�;?����6'�1�a.w|��׏A�L<�"r�~��$g���M�tPy�._�� @i�1�t�����d�p��W^#a�-g�s1�`��d�Jg�>�m+Lt���`�uN^B�4I�/"�=$$�]�&������-�b���|������W�����|��H���wt�������n�������tb�W�j�+��՗��������ڮ�ƌ@uf��	2i���Һ����_�x�f�)�r�o���:ҋ���PG���5]G���bZ��mQ��>����-�>�E��6�
��V���2G����Z�t	Rh�J����4����(T�s���K�?]Pr���l��Nw�.��K��4�2��f�����X(��R����K1�uE���2}d����5��
��[�pJ�0�J�{�T�r�N��^6"�X	?�W����!S"V����o�/3��v�b�w���.Hr�`t�Kbw&V�򓣌pZ���A��`.�zxc:���"9�RՆ��=�<4�r��y�����TO��U:ލ�ͪ:�uAr�J�=]��?�^|�^����N�*���vIcr<�Uf��Z�1�Oc~*ۢ��3���.��jo\�'���!�\�N�.��~�i�|*�����8�/��jΘ�Fh�_9����tt��JEn��FI~}u�\�-N^f(c\�n��'��?��	8     