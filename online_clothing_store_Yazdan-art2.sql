PGDMP      -                |           Online_Clothing_store    16.3    16.3 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16757    Online_Clothing_store    DATABASE     �   CREATE DATABASE "Online_Clothing_store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 '   DROP DATABASE "Online_Clothing_store";
                postgres    false            �            1259    16768    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(255),
    cellphone character varying(20),
    address character varying(255),
    registrationdate date
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16767    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    218            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    217            �            1259    16789    order_items    TABLE     
  CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    product_id integer,
    order_id integer,
    quality character varying(255),
    discount integer,
    price integer,
    patterned character varying(255),
    size character varying(255)
);
    DROP TABLE public.order_items;
       public         heap    postgres    false            �            1259    16788    order_items_order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.order_items_order_item_id_seq;
       public          postgres    false    222            �           0    0    order_items_order_item_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;
          public          postgres    false    221            �            1259    16759    product    TABLE       CREATE TABLE public.product (
    product_id integer NOT NULL,
    productname character varying(255),
    description text,
    type character varying(255),
    season character varying(255),
    isactive boolean,
    asset integer,
    main_price integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16758    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    216            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    215            �            1259    16777 	   userorder    TABLE     �   CREATE TABLE public.userorder (
    order_id integer NOT NULL,
    orderdate date,
    customer_id integer,
    totalamount integer
);
    DROP TABLE public.userorder;
       public         heap    postgres    false            �            1259    16776    userorder_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userorder_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.userorder_order_id_seq;
       public          postgres    false    220            �           0    0    userorder_order_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.userorder_order_id_seq OWNED BY public.userorder.order_id;
          public          postgres    false    219            *           2604    16771    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    217    218    218            ,           2604    16792    order_items order_item_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);
 H   ALTER TABLE public.order_items ALTER COLUMN order_item_id DROP DEFAULT;
       public          postgres    false    221    222    222            )           2604    16762    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    215    216    216            +           2604    16780    userorder order_id    DEFAULT     x   ALTER TABLE ONLY public.userorder ALTER COLUMN order_id SET DEFAULT nextval('public.userorder_order_id_seq'::regclass);
 A   ALTER TABLE public.userorder ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    16768    customer 
   TABLE DATA           [   COPY public.customer (customer_id, name, cellphone, address, registrationdate) FROM stdin;
    public          postgres    false    218   u)       �          0    16789    order_items 
   TABLE DATA           u   COPY public.order_items (order_item_id, product_id, order_id, quality, discount, price, patterned, size) FROM stdin;
    public          postgres    false    222   �*       �          0    16759    product 
   TABLE DATA           r   COPY public.product (product_id, productname, description, type, season, isactive, asset, main_price) FROM stdin;
    public          postgres    false    216   V+       �          0    16777 	   userorder 
   TABLE DATA           R   COPY public.userorder (order_id, orderdate, customer_id, totalamount) FROM stdin;
    public          postgres    false    220   A,       �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 10, true);
          public          postgres    false    217            �           0    0    order_items_order_item_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 10, true);
          public          postgres    false    221            �           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 10, true);
          public          postgres    false    215            �           0    0    userorder_order_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.userorder_order_id_seq', 10, true);
          public          postgres    false    219            0           2606    16775    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    218            4           2606    16796    order_items order_items_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public            postgres    false    222            .           2606    16766    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    216            2           2606    16782    userorder userorder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.userorder
    ADD CONSTRAINT userorder_pkey PRIMARY KEY (order_id);
 B   ALTER TABLE ONLY public.userorder DROP CONSTRAINT userorder_pkey;
       public            postgres    false    220            6           2606    16802 %   order_items order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.userorder(order_id);
 O   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_order_id_fkey;
       public          postgres    false    222    4658    220            7           2606    16797 '   order_items order_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 Q   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_product_id_fkey;
       public          postgres    false    216    4654    222            5           2606    16783 $   userorder userorder_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.userorder
    ADD CONSTRAINT userorder_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 N   ALTER TABLE ONLY public.userorder DROP CONSTRAINT userorder_customer_id_fkey;
       public          postgres    false    218    4656    220            �     x�M��N�0���W��b'�cIJ*T ��Q�Sǩ�PԿǖ�������;��M� !�RUu���H{6�d.�M.��$�����!o��Re!���tY���֖��lf(��J �>����ā=��;y�_��+��WPF���G�Z#�.fh�d��*�+<��ӏC��Hi�?ٯ�*�k�k�w�f�D�p����W5�h�Xs6L��yrH�D���\Ui�h�i��c��G�)� ������<���H�;sx�_�C����	�<���,�~rwG      �   �   x�]��
!��Ǉ��њ���m#)!8?�A�����sw9߹W�8M�Aޠ��3�X� ���ގ��R�������òD(��HG�B��b��=S Vr�V�c�a�� �>���w �?��pIv JR��^�� �z٬�?<�Jz�º�a���T�      �   �   x�m��j�0Dϳ_�/(�R��14�z��K/¨�p,i��Y7�������<T�#�>1^#s��.�[�a��w	��H�Ħ��z*�����54�pt6d\�}q���?i|��f-a�:��0:h�4���a*a�z��6�c�;˭K�T�λR�g�l���T6�U-Pӭ������ov��q�4b�w�n]�&�j���s�����E�R}>�!��q      �   [   x�E�Q
� ���.��w��ϱ
Ci�����h�J.r�8b,�-E��b;b�@o	!M�G��.�_buT�9bd0��hf�M�a�I~���     