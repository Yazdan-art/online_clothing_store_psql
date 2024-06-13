--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-12 14:32:32

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
-- TOC entry 218 (class 1259 OID 16768)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(255),
    cellphone character varying(20),
    address character varying(255),
    registrationdate date
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16767)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_customer_id_seq OWNER TO postgres;

--
-- TOC entry 4816 (class 0 OID 0)
-- Dependencies: 217
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- TOC entry 222 (class 1259 OID 16789)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    product_id integer,
    order_id integer,
    quality character varying(255),
    discount integer,
    price integer,
    patterned character varying(255),
    size character varying(255)
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16788)
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_order_item_id_seq OWNER TO postgres;

--
-- TOC entry 4817 (class 0 OID 0)
-- Dependencies: 221
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;


--
-- TOC entry 216 (class 1259 OID 16759)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    productname character varying(255),
    description text,
    type character varying(255),
    season character varying(255),
    isactive boolean,
    asset integer,
    main_price integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16758)
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_product_id_seq OWNER TO postgres;

--
-- TOC entry 4818 (class 0 OID 0)
-- Dependencies: 215
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- TOC entry 220 (class 1259 OID 16777)
-- Name: userorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userorder (
    order_id integer NOT NULL,
    orderdate date,
    customer_id integer,
    totalamount integer
);


ALTER TABLE public.userorder OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16776)
-- Name: userorder_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userorder_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.userorder_order_id_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 219
-- Name: userorder_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userorder_order_id_seq OWNED BY public.userorder.order_id;


--
-- TOC entry 4646 (class 2604 OID 16771)
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- TOC entry 4648 (class 2604 OID 16792)
-- Name: order_items order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);


--
-- TOC entry 4645 (class 2604 OID 16762)
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- TOC entry 4647 (class 2604 OID 16780)
-- Name: userorder order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userorder ALTER COLUMN order_id SET DEFAULT nextval('public.userorder_order_id_seq'::regclass);


--
-- TOC entry 4806 (class 0 OID 16768)
-- Dependencies: 218
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, name, cellphone, address, registrationdate) FROM stdin;
1	Jack Bosh	1234567890	123 Main St	2022-01-01
2	Emily Chen	0987654321	456 Elm St	2022-02-01
3	Michael Davis	5551234567	789 Oak St	2022-03-01
4	Sarah Taylor	8765432109	321 Pine St	2022-04-01
5	John Lee	2345678901	901 Maple St	2022-05-01
6	Kate Brown	3456789012	234 Cedar St	2022-06-01
7	William Smith	4567890123	567 Spruce St	2022-07-01
8	Olivia Johnson	5678901234	890 Fir St	2022-08-01
9	Benjamin Hall	6789012345	111 Cypress St	2022-09-01
10	Ava Martin	7890123456	222 Birch St	2022-10-01
\.


--
-- TOC entry 4810 (class 0 OID 16789)
-- Dependencies: 222
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, product_id, order_id, quality, discount, price, patterned, size) FROM stdin;
1	1	1	Good	0	10	Solid	Medium
2	2	2	Excellent	10	45	Striped	Large
3	3	3	Good	5	28	Solid	Medium
4	4	4	Fair	0	20	Solid	Small
5	5	5	Excellent	15	35	Patterned	Large
6	6	6	Good	10	50	Solid	Medium
7	7	7	Fair	5	30	Solid	Large
8	8	8	Good	10	25	Striped	Small
9	9	9	Excellent	15	40	Patterned	Medium
10	10	10	Good	5	20	Solid	Large
\.


--
-- TOC entry 4804 (class 0 OID 16759)
-- Dependencies: 216
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, productname, description, type, season, isactive, asset, main_price) FROM stdin;
1	Tshirt	Cotton Tshirt	Clothing	Summer	t	10	10
2	Socks	Cotton Socks	Clothing	Winter	t	5	5
3	Jeans	Denim Jeans	Clothing	Spring	t	20	20
4	Shirt	Cotton Shirt	Clothing	Autumn	t	15	15
5	Dress	Cotton Dress	Clothing	Summer	t	25	25
6	Jacket	Leather Jacket	Clothing	Winter	t	30	30
7	Pants	Cotton Pants	Clothing	Spring	t	18	18
8	Skirt	Cotton Skirt	Clothing	Autumn	t	22	22
9	Hat	Cotton Hat	Accessories	Summer	t	8	8
10	Scarf	Wool Scarf	Accessories	Winter	t	12	12
\.


--
-- TOC entry 4808 (class 0 OID 16777)
-- Dependencies: 220
-- Data for Name: userorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userorder (order_id, orderdate, customer_id, totalamount) FROM stdin;
1	2024-01-01	1	10
2	2024-01-05	2	50
3	2024-01-10	3	30
4	2024-01-15	4	20
5	2024-01-20	5	40
6	2024-01-25	6	60
7	2024-02-01	7	35
8	2024-02-05	8	25
9	2024-02-10	9	45
10	2024-02-15	10	55
\.


--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 217
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 10, true);


--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 221
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 10, true);


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 215
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 10, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: userorder_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userorder_order_id_seq', 10, true);


--
-- TOC entry 4652 (class 2606 OID 16775)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4656 (class 2606 OID 16796)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- TOC entry 4650 (class 2606 OID 16766)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4654 (class 2606 OID 16782)
-- Name: userorder userorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userorder
    ADD CONSTRAINT userorder_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4658 (class 2606 OID 16802)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.userorder(order_id);


--
-- TOC entry 4659 (class 2606 OID 16797)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- TOC entry 4657 (class 2606 OID 16783)
-- Name: userorder userorder_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userorder
    ADD CONSTRAINT userorder_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);


-- Completed on 2024-06-12 14:32:32

--
-- PostgreSQL database dump complete
--

