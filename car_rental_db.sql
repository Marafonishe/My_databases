PGDMP     (    #                {         
   car_rental    14.5    14.5 )    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    20032 
   car_rental    DATABASE     g   CREATE DATABASE car_rental WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE car_rental;
                postgres    false            �            1259    20115    car_spec    TABLE     j  CREATE TABLE public.car_spec (
    car_id integer NOT NULL,
    win numeric(17,0) NOT NULL,
    prod_country character varying NOT NULL,
    engine_cap numeric(1,1) NOT NULL,
    engine_power numeric(3,0),
    fuel_rate numeric(2,1) NOT NULL,
    prod_date date NOT NULL,
    oil_type character varying NOT NULL,
    has_turb boolean NOT NULL,
    CONSTRAINT car_spec_oil_type_check CHECK (((oil_type)::text = ANY ((ARRAY['sinthetic'::character varying, 'semi-sinthetic'::character varying, 'organic'::character varying])::text[]))),
    CONSTRAINT car_spec_prod_date_check CHECK ((prod_date >= CURRENT_TIMESTAMP))
);
    DROP TABLE public.car_spec;
       public         heap    postgres    false            �            1259    20080    cars    TABLE     _  CREATE TABLE public.cars (
    car_id integer NOT NULL,
    license_plate character(8) NOT NULL,
    car_brand character varying NOT NULL,
    car_model character varying NOT NULL,
    color character varying NOT NULL,
    body_type character varying NOT NULL,
    fuel_type character varying NOT NULL,
    car_class character varying NOT NULL,
    pass_quantity numeric(1,0) NOT NULL,
    has_cond boolean NOT NULL,
    rental_cost numeric NOT NULL,
    deposit numeric NOT NULL,
    CONSTRAINT cars_body_type_check CHECK (((body_type)::text = ANY ((ARRAY['sedan'::character varying, 'pickup'::character varying, 'universal'::character varying, 'minivan'::character varying, 'crossover'::character varying, 'hatchback'::character varying, 'liftback'::character varying, 'coupe'::character varying])::text[]))),
    CONSTRAINT cars_car_class_check CHECK (((car_class)::text = ANY ((ARRAY['econom'::character varying, 'comfort'::character varying, 'luxury'::character varying, 'business'::character varying, 'premium'::character varying])::text[]))),
    CONSTRAINT cars_fuel_type_check CHECK (((fuel_type)::text = ANY ((ARRAY['diesel'::character varying, 'petrol'::character varying, 'gas'::character varying, 'electric'::character varying])::text[]))),
    CONSTRAINT cars_pass_quantity_check CHECK (((pass_quantity >= (1)::numeric) AND (pass_quantity <= (9)::numeric)))
);
    DROP TABLE public.cars;
       public         heap    postgres    false            �            1259    20079    cars_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cars_car_id_seq;
       public          postgres    false    210            '           0    0    cars_car_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cars_car_id_seq OWNED BY public.cars.car_id;
          public          postgres    false    209            �            1259    20107    employes    TABLE     5  CREATE TABLE public.employes (
    employee_id integer NOT NULL,
    first_name character varying NOT NULL,
    middle_name character varying NOT NULL,
    last_name character varying NOT NULL,
    phone_number character varying NOT NULL,
    address character varying NOT NULL,
    birthday date NOT NULL
);
    DROP TABLE public.employes;
       public         heap    postgres    false            �            1259    20106    employes_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employes_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employes_employee_id_seq;
       public          postgres    false    214            (           0    0    employes_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employes_employee_id_seq OWNED BY public.employes.employee_id;
          public          postgres    false    213            �            1259    20095    renters    TABLE     �  CREATE TABLE public.renters (
    renter_id integer NOT NULL,
    first_name character varying NOT NULL,
    middle_name character varying NOT NULL,
    last_name character varying NOT NULL,
    phone_number character varying NOT NULL,
    address character varying NOT NULL,
    birthday date NOT NULL,
    driver_lisense_num numeric(10,0) NOT NULL,
    CONSTRAINT renters_birthday_check CHECK (((CURRENT_TIMESTAMP - '18 years'::interval) >= birthday))
);
    DROP TABLE public.renters;
       public         heap    postgres    false            �            1259    20094    renters_renter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.renters_renter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.renters_renter_id_seq;
       public          postgres    false    212            )           0    0    renters_renter_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.renters_renter_id_seq OWNED BY public.renters.renter_id;
          public          postgres    false    211            �            1259    20130    reservations    TABLE     �  CREATE TABLE public.reservations (
    reservation_id integer NOT NULL,
    car_id integer NOT NULL,
    renter integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    transfer_emp integer NOT NULL,
    accept_emp integer NOT NULL,
    rental_cost numeric NOT NULL,
    total numeric NOT NULL,
    CONSTRAINT reservations_check CHECK ((end_date > start_date)),
    CONSTRAINT reservations_check1 CHECK ((total >= rental_cost))
);
     DROP TABLE public.reservations;
       public         heap    postgres    false            �            1259    20129    reservations_reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservations_reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reservations_reservation_id_seq;
       public          postgres    false    217            *           0    0    reservations_reservation_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reservations_reservation_id_seq OWNED BY public.reservations.reservation_id;
          public          postgres    false    216            o           2604    20083    cars car_id    DEFAULT     j   ALTER TABLE ONLY public.cars ALTER COLUMN car_id SET DEFAULT nextval('public.cars_car_id_seq'::regclass);
 :   ALTER TABLE public.cars ALTER COLUMN car_id DROP DEFAULT;
       public          postgres    false    209    210    210            v           2604    20110    employes employee_id    DEFAULT     |   ALTER TABLE ONLY public.employes ALTER COLUMN employee_id SET DEFAULT nextval('public.employes_employee_id_seq'::regclass);
 C   ALTER TABLE public.employes ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    213    214    214            t           2604    20098    renters renter_id    DEFAULT     v   ALTER TABLE ONLY public.renters ALTER COLUMN renter_id SET DEFAULT nextval('public.renters_renter_id_seq'::regclass);
 @   ALTER TABLE public.renters ALTER COLUMN renter_id DROP DEFAULT;
       public          postgres    false    212    211    212            y           2604    20133    reservations reservation_id    DEFAULT     �   ALTER TABLE ONLY public.reservations ALTER COLUMN reservation_id SET DEFAULT nextval('public.reservations_reservation_id_seq'::regclass);
 J   ALTER TABLE public.reservations ALTER COLUMN reservation_id DROP DEFAULT;
       public          postgres    false    217    216    217                      0    20115    car_spec 
   TABLE DATA           �   COPY public.car_spec (car_id, win, prod_country, engine_cap, engine_power, fuel_rate, prod_date, oil_type, has_turb) FROM stdin;
    public          postgres    false    215   ]:                 0    20080    cars 
   TABLE DATA           �   COPY public.cars (car_id, license_plate, car_brand, car_model, color, body_type, fuel_type, car_class, pass_quantity, has_cond, rental_cost, deposit) FROM stdin;
    public          postgres    false    210   z:                 0    20107    employes 
   TABLE DATA           t   COPY public.employes (employee_id, first_name, middle_name, last_name, phone_number, address, birthday) FROM stdin;
    public          postgres    false    214   �:                 0    20095    renters 
   TABLE DATA           �   COPY public.renters (renter_id, first_name, middle_name, last_name, phone_number, address, birthday, driver_lisense_num) FROM stdin;
    public          postgres    false    212   �:                  0    20130    reservations 
   TABLE DATA           �   COPY public.reservations (reservation_id, car_id, renter, start_date, end_date, transfer_emp, accept_emp, rental_cost, total) FROM stdin;
    public          postgres    false    217   �:       +           0    0    cars_car_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cars_car_id_seq', 1, false);
          public          postgres    false    209            ,           0    0    employes_employee_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employes_employee_id_seq', 1, false);
          public          postgres    false    213            -           0    0    renters_renter_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.renters_renter_id_seq', 1, false);
          public          postgres    false    211            .           0    0    reservations_reservation_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.reservations_reservation_id_seq', 1, false);
          public          postgres    false    216            �           2606    20123    car_spec car_spec_win_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.car_spec
    ADD CONSTRAINT car_spec_win_key UNIQUE (win);
 C   ALTER TABLE ONLY public.car_spec DROP CONSTRAINT car_spec_win_key;
       public            postgres    false    215            }           2606    20093    cars cars_license_plate_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_license_plate_key UNIQUE (license_plate);
 E   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_license_plate_key;
       public            postgres    false    210                       2606    20091    cars cars_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (car_id);
 8   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_pkey;
       public            postgres    false    210            �           2606    20114    employes employes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employes
    ADD CONSTRAINT employes_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employes DROP CONSTRAINT employes_pkey;
       public            postgres    false    214            �           2606    20105 &   renters renters_driver_lisense_num_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.renters
    ADD CONSTRAINT renters_driver_lisense_num_key UNIQUE (driver_lisense_num);
 P   ALTER TABLE ONLY public.renters DROP CONSTRAINT renters_driver_lisense_num_key;
       public            postgres    false    212            �           2606    20103    renters renters_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.renters
    ADD CONSTRAINT renters_pkey PRIMARY KEY (renter_id);
 >   ALTER TABLE ONLY public.renters DROP CONSTRAINT renters_pkey;
       public            postgres    false    212            �           2606    20124    car_spec car_spec_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_spec
    ADD CONSTRAINT car_spec_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.cars(car_id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.car_spec DROP CONSTRAINT car_spec_car_id_fkey;
       public          postgres    false    215    3199    210            �           2606    20153 )   reservations reservations_accept_emp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_accept_emp_fkey FOREIGN KEY (accept_emp) REFERENCES public.employes(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_accept_emp_fkey;
       public          postgres    false    214    217    3205            �           2606    20138 %   reservations reservations_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.cars(car_id);
 O   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_car_id_fkey;
       public          postgres    false    217    210    3199            �           2606    20143 %   reservations reservations_renter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_renter_fkey FOREIGN KEY (renter) REFERENCES public.renters(renter_id);
 O   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_renter_fkey;
       public          postgres    false    212    3203    217            �           2606    20148 +   reservations reservations_transfer_emp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_transfer_emp_fkey FOREIGN KEY (transfer_emp) REFERENCES public.employes(employee_id);
 U   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_transfer_emp_fkey;
       public          postgres    false    214    217    3205                  x������ � �            x������ � �            x������ � �            x������ � �             x������ � �     