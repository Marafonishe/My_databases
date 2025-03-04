PGDMP         %                {            movie_streaming    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20489    movie_streaming    DATABASE     l   CREATE DATABASE movie_streaming WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE movie_streaming;
                postgres    false            �            1259    20491    actors    TABLE     �   CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    name text NOT NULL,
    country integer NOT NULL,
    birthday date NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    20490    actors_actor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.actors_actor_id_seq;
       public          postgres    false    210            �           0    0    actors_actor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;
          public          postgres    false    209            �            1259    20597 	   composers    TABLE     �   CREATE TABLE public.composers (
    composer_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
    DROP TABLE public.composers;
       public         heap    postgres    false            �            1259    20596    composers_composer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.composers_composer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.composers_composer_id_seq;
       public          postgres    false    226            �           0    0    composers_composer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.composers_composer_id_seq OWNED BY public.composers.composer_id;
          public          postgres    false    225            �            1259    20826    country    TABLE     a   CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name text NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    20825    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    240            �           0    0    country_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.country_id;
          public          postgres    false    239            �            1259    20500 	   directors    TABLE     �   CREATE TABLE public.directors (
    director_id integer NOT NULL,
    name text NOT NULL,
    country integer NOT NULL,
    birthday date NOT NULL
);
    DROP TABLE public.directors;
       public         heap    postgres    false            �            1259    20499    directors_director_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directors_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directors_director_id_seq;
       public          postgres    false    212            �           0    0    directors_director_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directors_director_id_seq OWNED BY public.directors.director_id;
          public          postgres    false    211            �            1259    20606    editors    TABLE     �   CREATE TABLE public.editors (
    editor_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
    DROP TABLE public.editors;
       public         heap    postgres    false            �            1259    20605    editors_editor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.editors_editor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.editors_editor_id_seq;
       public          postgres    false    228            �           0    0    editors_editor_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.editors_editor_id_seq OWNED BY public.editors.editor_id;
          public          postgres    false    227            �            1259    20570    genres    TABLE     \   CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre_name text NOT NULL
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    20569    genres_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.genres_genre_id_seq;
       public          postgres    false    220            �           0    0    genres_genre_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;
          public          postgres    false    219            �            1259    20809 	   mov_actor    TABLE     v   CREATE TABLE public.mov_actor (
    ma_id integer NOT NULL,
    movie integer NOT NULL,
    actor integer NOT NULL
);
    DROP TABLE public.mov_actor;
       public         heap    postgres    false            �            1259    20808    mov_actor_ma_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mov_actor_ma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.mov_actor_ma_id_seq;
       public          postgres    false    238            �           0    0    mov_actor_ma_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.mov_actor_ma_id_seq OWNED BY public.mov_actor.ma_id;
          public          postgres    false    237            �            1259    20935    mov_country    TABLE     z   CREATE TABLE public.mov_country (
    mc_id integer NOT NULL,
    movie integer NOT NULL,
    country integer NOT NULL
);
    DROP TABLE public.mov_country;
       public         heap    postgres    false            �            1259    20934    mov_country_mc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mov_country_mc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.mov_country_mc_id_seq;
       public          postgres    false    242            �           0    0    mov_country_mc_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.mov_country_mc_id_seq OWNED BY public.mov_country.mc_id;
          public          postgres    false    241            �            1259    20758    mov_dir    TABLE     w   CREATE TABLE public.mov_dir (
    md_id integer NOT NULL,
    movie integer NOT NULL,
    director integer NOT NULL
);
    DROP TABLE public.mov_dir;
       public         heap    postgres    false            �            1259    20757    mov_dir_md_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mov_dir_md_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mov_dir_md_id_seq;
       public          postgres    false    232            �           0    0    mov_dir_md_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mov_dir_md_id_seq OWNED BY public.mov_dir.md_id;
          public          postgres    false    231            �            1259    20775    mov_prod    TABLE     |   CREATE TABLE public.mov_prod (
    mp_id integer NOT NULL,
    movie integer NOT NULL,
    prod_company integer NOT NULL
);
    DROP TABLE public.mov_prod;
       public         heap    postgres    false            �            1259    20774    mov_prod_mp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mov_prod_mp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.mov_prod_mp_id_seq;
       public          postgres    false    234            �           0    0    mov_prod_mp_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.mov_prod_mp_id_seq OWNED BY public.mov_prod.mp_id;
          public          postgres    false    233            �            1259    20792 
   mov_screen    TABLE     ~   CREATE TABLE public.mov_screen (
    ms_id integer NOT NULL,
    movie integer NOT NULL,
    screenwriter integer NOT NULL
);
    DROP TABLE public.mov_screen;
       public         heap    postgres    false            �            1259    20791    mov_screen_ms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mov_screen_ms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mov_screen_ms_id_seq;
       public          postgres    false    236            �           0    0    mov_screen_ms_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mov_screen_ms_id_seq OWNED BY public.mov_screen.ms_id;
          public          postgres    false    235            �            1259    20719    movies    TABLE     �  CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    movie_name text NOT NULL,
    genre integer NOT NULL,
    duration time without time zone NOT NULL,
    release_date date NOT NULL,
    operator integer NOT NULL,
    composer integer NOT NULL,
    prod_designer integer NOT NULL,
    editor integer NOT NULL,
    age_limit character varying NOT NULL,
    rating numeric NOT NULL,
    original_language text NOT NULL,
    description text NOT NULL,
    subtitles boolean NOT NULL,
    category text NOT NULL,
    video_quality text NOT NULL,
    sound_volume numeric(1,1) NOT NULL,
    CONSTRAINT movies_age_limit_check CHECK (((age_limit)::text = ANY ((ARRAY['0+'::character varying, '6+'::character varying, '12+'::character varying, '16+'::character varying, '18+'::character varying])::text[]))),
    CONSTRAINT movies_category_check CHECK ((category = ANY (ARRAY['A'::text, 'B'::text]))),
    CONSTRAINT movies_rating_check CHECK (((rating >= (1)::numeric) AND (rating <= (10)::numeric))),
    CONSTRAINT movies_sound_volume_check CHECK ((sound_volume = ANY (ARRAY[2.0, 2.1, 5.1, 6.1, 7.1]))),
    CONSTRAINT movies_video_quality_check CHECK ((video_quality = ANY (ARRAY['SD'::text, 'HD'::text, 'Full HD'::text, 'Ultra HD'::text, '4K'::text, '8K'::text])))
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    20718    movies_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movies_movie_id_seq;
       public          postgres    false    230            �           0    0    movies_movie_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;
          public          postgres    false    229            �            1259    20579 	   operators    TABLE     �   CREATE TABLE public.operators (
    operator_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
    DROP TABLE public.operators;
       public         heap    postgres    false            �            1259    20578    operators_operator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operators_operator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.operators_operator_id_seq;
       public          postgres    false    222            �           0    0    operators_operator_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.operators_operator_id_seq OWNED BY public.operators.operator_id;
          public          postgres    false    221            �            1259    20518    prod_company    TABLE     �   CREATE TABLE public.prod_company (
    company_id integer NOT NULL,
    comp_name text NOT NULL,
    country integer NOT NULL
);
     DROP TABLE public.prod_company;
       public         heap    postgres    false            �            1259    20517    prod_company_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prod_company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.prod_company_company_id_seq;
       public          postgres    false    214            �           0    0    prod_company_company_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.prod_company_company_id_seq OWNED BY public.prod_company.company_id;
          public          postgres    false    213            �            1259    20588    prod_designers    TABLE     �   CREATE TABLE public.prod_designers (
    prd_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
 "   DROP TABLE public.prod_designers;
       public         heap    postgres    false            �            1259    20587    prod_designers_prd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prod_designers_prd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.prod_designers_prd_id_seq;
       public          postgres    false    224            �           0    0    prod_designers_prd_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.prod_designers_prd_id_seq OWNED BY public.prod_designers.prd_id;
          public          postgres    false    223            �            1259    20527 	   producers    TABLE     �   CREATE TABLE public.producers (
    producer_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
    DROP TABLE public.producers;
       public         heap    postgres    false            �            1259    20526    producers_producer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producers_producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.producers_producer_id_seq;
       public          postgres    false    216            �           0    0    producers_producer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.producers_producer_id_seq OWNED BY public.producers.producer_id;
          public          postgres    false    215            �            1259    20536    screenwriters    TABLE     �   CREATE TABLE public.screenwriters (
    screenwriter_id integer NOT NULL,
    name text NOT NULL,
    birthday date NOT NULL,
    country integer NOT NULL
);
 !   DROP TABLE public.screenwriters;
       public         heap    postgres    false            �            1259    20535 !   screenwriters_screenwriter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.screenwriters_screenwriter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.screenwriters_screenwriter_id_seq;
       public          postgres    false    218            �           0    0 !   screenwriters_screenwriter_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.screenwriters_screenwriter_id_seq OWNED BY public.screenwriters.screenwriter_id;
          public          postgres    false    217            �           2604    20494    actors actor_id    DEFAULT     r   ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);
 >   ALTER TABLE public.actors ALTER COLUMN actor_id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    20600    composers composer_id    DEFAULT     ~   ALTER TABLE ONLY public.composers ALTER COLUMN composer_id SET DEFAULT nextval('public.composers_composer_id_seq'::regclass);
 D   ALTER TABLE public.composers ALTER COLUMN composer_id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    20829    country country_id    DEFAULT     p   ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_id_seq'::regclass);
 A   ALTER TABLE public.country ALTER COLUMN country_id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    20503    directors director_id    DEFAULT     ~   ALTER TABLE ONLY public.directors ALTER COLUMN director_id SET DEFAULT nextval('public.directors_director_id_seq'::regclass);
 D   ALTER TABLE public.directors ALTER COLUMN director_id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    20609    editors editor_id    DEFAULT     v   ALTER TABLE ONLY public.editors ALTER COLUMN editor_id SET DEFAULT nextval('public.editors_editor_id_seq'::regclass);
 @   ALTER TABLE public.editors ALTER COLUMN editor_id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    20573    genres genre_id    DEFAULT     r   ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);
 >   ALTER TABLE public.genres ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    20812    mov_actor ma_id    DEFAULT     r   ALTER TABLE ONLY public.mov_actor ALTER COLUMN ma_id SET DEFAULT nextval('public.mov_actor_ma_id_seq'::regclass);
 >   ALTER TABLE public.mov_actor ALTER COLUMN ma_id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    20938    mov_country mc_id    DEFAULT     v   ALTER TABLE ONLY public.mov_country ALTER COLUMN mc_id SET DEFAULT nextval('public.mov_country_mc_id_seq'::regclass);
 @   ALTER TABLE public.mov_country ALTER COLUMN mc_id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    20761    mov_dir md_id    DEFAULT     n   ALTER TABLE ONLY public.mov_dir ALTER COLUMN md_id SET DEFAULT nextval('public.mov_dir_md_id_seq'::regclass);
 <   ALTER TABLE public.mov_dir ALTER COLUMN md_id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    20778    mov_prod mp_id    DEFAULT     p   ALTER TABLE ONLY public.mov_prod ALTER COLUMN mp_id SET DEFAULT nextval('public.mov_prod_mp_id_seq'::regclass);
 =   ALTER TABLE public.mov_prod ALTER COLUMN mp_id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    20795    mov_screen ms_id    DEFAULT     t   ALTER TABLE ONLY public.mov_screen ALTER COLUMN ms_id SET DEFAULT nextval('public.mov_screen_ms_id_seq'::regclass);
 ?   ALTER TABLE public.mov_screen ALTER COLUMN ms_id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    20722    movies movie_id    DEFAULT     r   ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);
 >   ALTER TABLE public.movies ALTER COLUMN movie_id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    20582    operators operator_id    DEFAULT     ~   ALTER TABLE ONLY public.operators ALTER COLUMN operator_id SET DEFAULT nextval('public.operators_operator_id_seq'::regclass);
 D   ALTER TABLE public.operators ALTER COLUMN operator_id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    20521    prod_company company_id    DEFAULT     �   ALTER TABLE ONLY public.prod_company ALTER COLUMN company_id SET DEFAULT nextval('public.prod_company_company_id_seq'::regclass);
 F   ALTER TABLE public.prod_company ALTER COLUMN company_id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    20591    prod_designers prd_id    DEFAULT     ~   ALTER TABLE ONLY public.prod_designers ALTER COLUMN prd_id SET DEFAULT nextval('public.prod_designers_prd_id_seq'::regclass);
 D   ALTER TABLE public.prod_designers ALTER COLUMN prd_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    20530    producers producer_id    DEFAULT     ~   ALTER TABLE ONLY public.producers ALTER COLUMN producer_id SET DEFAULT nextval('public.producers_producer_id_seq'::regclass);
 D   ALTER TABLE public.producers ALTER COLUMN producer_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    20539    screenwriters screenwriter_id    DEFAULT     �   ALTER TABLE ONLY public.screenwriters ALTER COLUMN screenwriter_id SET DEFAULT nextval('public.screenwriters_screenwriter_id_seq'::regclass);
 L   ALTER TABLE public.screenwriters ALTER COLUMN screenwriter_id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    20491    actors 
   TABLE DATA           C   COPY public.actors (actor_id, name, country, birthday) FROM stdin;
    public          postgres    false    210   �       �          0    20597 	   composers 
   TABLE DATA           I   COPY public.composers (composer_id, name, birthday, country) FROM stdin;
    public          postgres    false    226   �       �          0    20826    country 
   TABLE DATA           ;   COPY public.country (country_id, country_name) FROM stdin;
    public          postgres    false    240   "�       �          0    20500 	   directors 
   TABLE DATA           I   COPY public.directors (director_id, name, country, birthday) FROM stdin;
    public          postgres    false    212   ?�       �          0    20606    editors 
   TABLE DATA           E   COPY public.editors (editor_id, name, birthday, country) FROM stdin;
    public          postgres    false    228   \�       �          0    20570    genres 
   TABLE DATA           6   COPY public.genres (genre_id, genre_name) FROM stdin;
    public          postgres    false    220   y�       �          0    20809 	   mov_actor 
   TABLE DATA           8   COPY public.mov_actor (ma_id, movie, actor) FROM stdin;
    public          postgres    false    238   ��       �          0    20935    mov_country 
   TABLE DATA           <   COPY public.mov_country (mc_id, movie, country) FROM stdin;
    public          postgres    false    242   ��       �          0    20758    mov_dir 
   TABLE DATA           9   COPY public.mov_dir (md_id, movie, director) FROM stdin;
    public          postgres    false    232   д       �          0    20775    mov_prod 
   TABLE DATA           >   COPY public.mov_prod (mp_id, movie, prod_company) FROM stdin;
    public          postgres    false    234   ��       �          0    20792 
   mov_screen 
   TABLE DATA           @   COPY public.mov_screen (ms_id, movie, screenwriter) FROM stdin;
    public          postgres    false    236   
�       �          0    20719    movies 
   TABLE DATA           �   COPY public.movies (movie_id, movie_name, genre, duration, release_date, operator, composer, prod_designer, editor, age_limit, rating, original_language, description, subtitles, category, video_quality, sound_volume) FROM stdin;
    public          postgres    false    230   '�       �          0    20579 	   operators 
   TABLE DATA           I   COPY public.operators (operator_id, name, birthday, country) FROM stdin;
    public          postgres    false    222   D�       �          0    20518    prod_company 
   TABLE DATA           F   COPY public.prod_company (company_id, comp_name, country) FROM stdin;
    public          postgres    false    214   a�       �          0    20588    prod_designers 
   TABLE DATA           I   COPY public.prod_designers (prd_id, name, birthday, country) FROM stdin;
    public          postgres    false    224   ~�       �          0    20527 	   producers 
   TABLE DATA           I   COPY public.producers (producer_id, name, birthday, country) FROM stdin;
    public          postgres    false    216   ��       �          0    20536    screenwriters 
   TABLE DATA           Q   COPY public.screenwriters (screenwriter_id, name, birthday, country) FROM stdin;
    public          postgres    false    218   ��       �           0    0    actors_actor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actors_actor_id_seq', 1, false);
          public          postgres    false    209            �           0    0    composers_composer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.composers_composer_id_seq', 1, false);
          public          postgres    false    225            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 1, false);
          public          postgres    false    239            �           0    0    directors_director_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directors_director_id_seq', 1, false);
          public          postgres    false    211            �           0    0    editors_editor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.editors_editor_id_seq', 1, false);
          public          postgres    false    227            �           0    0    genres_genre_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genres_genre_id_seq', 1, false);
          public          postgres    false    219            �           0    0    mov_actor_ma_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mov_actor_ma_id_seq', 1, false);
          public          postgres    false    237            �           0    0    mov_country_mc_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.mov_country_mc_id_seq', 1, false);
          public          postgres    false    241            �           0    0    mov_dir_md_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mov_dir_md_id_seq', 1, false);
          public          postgres    false    231            �           0    0    mov_prod_mp_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mov_prod_mp_id_seq', 1, false);
          public          postgres    false    233            �           0    0    mov_screen_ms_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mov_screen_ms_id_seq', 1, false);
          public          postgres    false    235            �           0    0    movies_movie_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.movies_movie_id_seq', 1, false);
          public          postgres    false    229            �           0    0    operators_operator_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.operators_operator_id_seq', 1, false);
          public          postgres    false    221            �           0    0    prod_company_company_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.prod_company_company_id_seq', 1, false);
          public          postgres    false    213            �           0    0    prod_designers_prd_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.prod_designers_prd_id_seq', 1, false);
          public          postgres    false    223            �           0    0    producers_producer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.producers_producer_id_seq', 1, false);
          public          postgres    false    215            �           0    0 !   screenwriters_screenwriter_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.screenwriters_screenwriter_id_seq', 1, false);
          public          postgres    false    217            �           2606    20498    actors actors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    210            �           2606    20604    composers composers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.composers
    ADD CONSTRAINT composers_pkey PRIMARY KEY (composer_id);
 B   ALTER TABLE ONLY public.composers DROP CONSTRAINT composers_pkey;
       public            postgres    false    226            �           2606    20840    country country_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    240            �           2606    20507    directors directors_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (director_id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    212            �           2606    20613    editors editors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.editors
    ADD CONSTRAINT editors_pkey PRIMARY KEY (editor_id);
 >   ALTER TABLE ONLY public.editors DROP CONSTRAINT editors_pkey;
       public            postgres    false    228            �           2606    20577    genres genres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    220            �           2606    20814 #   mov_actor mov_actor_movie_actor_key 
   CONSTRAINT     f   ALTER TABLE ONLY public.mov_actor
    ADD CONSTRAINT mov_actor_movie_actor_key UNIQUE (movie, actor);
 M   ALTER TABLE ONLY public.mov_actor DROP CONSTRAINT mov_actor_movie_actor_key;
       public            postgres    false    238    238            �           2606    20942 )   mov_country mov_country_movie_country_key 
   CONSTRAINT     n   ALTER TABLE ONLY public.mov_country
    ADD CONSTRAINT mov_country_movie_country_key UNIQUE (movie, country);
 S   ALTER TABLE ONLY public.mov_country DROP CONSTRAINT mov_country_movie_country_key;
       public            postgres    false    242    242            �           2606    20940    mov_country mov_country_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mov_country
    ADD CONSTRAINT mov_country_pkey PRIMARY KEY (mc_id);
 F   ALTER TABLE ONLY public.mov_country DROP CONSTRAINT mov_country_pkey;
       public            postgres    false    242            �           2606    20763 "   mov_dir mov_dir_movie_director_key 
   CONSTRAINT     h   ALTER TABLE ONLY public.mov_dir
    ADD CONSTRAINT mov_dir_movie_director_key UNIQUE (movie, director);
 L   ALTER TABLE ONLY public.mov_dir DROP CONSTRAINT mov_dir_movie_director_key;
       public            postgres    false    232    232            �           2606    20780 (   mov_prod mov_prod_movie_prod_company_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.mov_prod
    ADD CONSTRAINT mov_prod_movie_prod_company_key UNIQUE (movie, prod_company);
 R   ALTER TABLE ONLY public.mov_prod DROP CONSTRAINT mov_prod_movie_prod_company_key;
       public            postgres    false    234    234            �           2606    20797 ,   mov_screen mov_screen_movie_screenwriter_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.mov_screen
    ADD CONSTRAINT mov_screen_movie_screenwriter_key UNIQUE (movie, screenwriter);
 V   ALTER TABLE ONLY public.mov_screen DROP CONSTRAINT mov_screen_movie_screenwriter_key;
       public            postgres    false    236    236            �           2606    20731    movies movies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    230            �           2606    20586    operators operators_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.operators
    ADD CONSTRAINT operators_pkey PRIMARY KEY (operator_id);
 B   ALTER TABLE ONLY public.operators DROP CONSTRAINT operators_pkey;
       public            postgres    false    222            �           2606    20525    prod_company prod_company_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.prod_company
    ADD CONSTRAINT prod_company_pkey PRIMARY KEY (company_id);
 H   ALTER TABLE ONLY public.prod_company DROP CONSTRAINT prod_company_pkey;
       public            postgres    false    214            �           2606    20595 "   prod_designers prod_designers_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.prod_designers
    ADD CONSTRAINT prod_designers_pkey PRIMARY KEY (prd_id);
 L   ALTER TABLE ONLY public.prod_designers DROP CONSTRAINT prod_designers_pkey;
       public            postgres    false    224            �           2606    20534    producers producers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (producer_id);
 B   ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_pkey;
       public            postgres    false    216            �           2606    20543     screenwriters screenwriters_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.screenwriters
    ADD CONSTRAINT screenwriters_pkey PRIMARY KEY (screenwriter_id);
 J   ALTER TABLE ONLY public.screenwriters DROP CONSTRAINT screenwriters_pkey;
       public            postgres    false    218            �           2606    20907    actors actors_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 D   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_country_fkey;
       public          postgres    false    210    3297    240            �           2606    20841     composers composers_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.composers
    ADD CONSTRAINT composers_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 J   ALTER TABLE ONLY public.composers DROP CONSTRAINT composers_country_fkey;
       public          postgres    false    240    3297    226            �           2606    20918     directors directors_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 J   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_country_fkey;
       public          postgres    false    212    240    3297            �           2606    20852    editors editors_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.editors
    ADD CONSTRAINT editors_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 F   ALTER TABLE ONLY public.editors DROP CONSTRAINT editors_country_fkey;
       public          postgres    false    240    228    3297            �           2606    20820    mov_actor mov_actor_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_actor
    ADD CONSTRAINT mov_actor_actor_fkey FOREIGN KEY (actor) REFERENCES public.actors(actor_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.mov_actor DROP CONSTRAINT mov_actor_actor_fkey;
       public          postgres    false    210    3267    238            �           2606    20815    mov_actor mov_actor_movie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_actor
    ADD CONSTRAINT mov_actor_movie_fkey FOREIGN KEY (movie) REFERENCES public.movies(movie_id);
 H   ALTER TABLE ONLY public.mov_actor DROP CONSTRAINT mov_actor_movie_fkey;
       public          postgres    false    230    3287    238            �           2606    20948 $   mov_country mov_country_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_country
    ADD CONSTRAINT mov_country_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.mov_country DROP CONSTRAINT mov_country_country_fkey;
       public          postgres    false    240    242    3297            �           2606    20943 "   mov_country mov_country_movie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_country
    ADD CONSTRAINT mov_country_movie_fkey FOREIGN KEY (movie) REFERENCES public.movies(movie_id);
 L   ALTER TABLE ONLY public.mov_country DROP CONSTRAINT mov_country_movie_fkey;
       public          postgres    false    230    3287    242            �           2606    20769    mov_dir mov_dir_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_dir
    ADD CONSTRAINT mov_dir_director_fkey FOREIGN KEY (director) REFERENCES public.directors(director_id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.mov_dir DROP CONSTRAINT mov_dir_director_fkey;
       public          postgres    false    232    212    3269            �           2606    20764    mov_dir mov_dir_movie_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mov_dir
    ADD CONSTRAINT mov_dir_movie_fkey FOREIGN KEY (movie) REFERENCES public.movies(movie_id);
 D   ALTER TABLE ONLY public.mov_dir DROP CONSTRAINT mov_dir_movie_fkey;
       public          postgres    false    230    232    3287            �           2606    20781    mov_prod mov_prod_movie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_prod
    ADD CONSTRAINT mov_prod_movie_fkey FOREIGN KEY (movie) REFERENCES public.movies(movie_id);
 F   ALTER TABLE ONLY public.mov_prod DROP CONSTRAINT mov_prod_movie_fkey;
       public          postgres    false    234    3287    230            �           2606    20786 #   mov_prod mov_prod_prod_company_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_prod
    ADD CONSTRAINT mov_prod_prod_company_fkey FOREIGN KEY (prod_company) REFERENCES public.prod_company(company_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.mov_prod DROP CONSTRAINT mov_prod_prod_company_fkey;
       public          postgres    false    234    214    3271            �           2606    20798     mov_screen mov_screen_movie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_screen
    ADD CONSTRAINT mov_screen_movie_fkey FOREIGN KEY (movie) REFERENCES public.movies(movie_id);
 J   ALTER TABLE ONLY public.mov_screen DROP CONSTRAINT mov_screen_movie_fkey;
       public          postgres    false    3287    230    236            �           2606    20803 '   mov_screen mov_screen_screenwriter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mov_screen
    ADD CONSTRAINT mov_screen_screenwriter_fkey FOREIGN KEY (screenwriter) REFERENCES public.screenwriters(screenwriter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mov_screen DROP CONSTRAINT mov_screen_screenwriter_fkey;
       public          postgres    false    3275    218    236            �           2606    20747    movies movies_composer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_composer_fkey FOREIGN KEY (composer) REFERENCES public.composers(composer_id);
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_composer_fkey;
       public          postgres    false    230    3283    226            �           2606    20742    movies movies_editor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_editor_fkey FOREIGN KEY (editor) REFERENCES public.editors(editor_id);
 C   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_editor_fkey;
       public          postgres    false    228    230    3285            �           2606    20732    movies movies_genre_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_genre_fkey FOREIGN KEY (genre) REFERENCES public.genres(genre_id);
 B   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_genre_fkey;
       public          postgres    false    220    3277    230            �           2606    20737    movies movies_operator_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_operator_fkey FOREIGN KEY (operator) REFERENCES public.operators(operator_id);
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_operator_fkey;
       public          postgres    false    230    222    3279            �           2606    20752     movies movies_prod_designer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_prod_designer_fkey FOREIGN KEY (prod_designer) REFERENCES public.prod_designers(prd_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_prod_designer_fkey;
       public          postgres    false    230    224    3281            �           2606    20863     operators operators_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operators
    ADD CONSTRAINT operators_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 J   ALTER TABLE ONLY public.operators DROP CONSTRAINT operators_country_fkey;
       public          postgres    false    240    222    3297            �           2606    20929 &   prod_company prod_company_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prod_company
    ADD CONSTRAINT prod_company_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 P   ALTER TABLE ONLY public.prod_company DROP CONSTRAINT prod_company_country_fkey;
       public          postgres    false    240    3297    214            �           2606    20874 *   prod_designers prod_designers_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prod_designers
    ADD CONSTRAINT prod_designers_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 T   ALTER TABLE ONLY public.prod_designers DROP CONSTRAINT prod_designers_country_fkey;
       public          postgres    false    240    3297    224            �           2606    20885     producers producers_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 J   ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_country_fkey;
       public          postgres    false    3297    216    240            �           2606    20896 (   screenwriters screenwriters_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.screenwriters
    ADD CONSTRAINT screenwriters_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_id);
 R   ALTER TABLE ONLY public.screenwriters DROP CONSTRAINT screenwriters_country_fkey;
       public          postgres    false    218    3297    240            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     