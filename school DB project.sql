--
-- PostgreSQL database dump
--

\restrict 6tC34Ud4pexz18E7JrulXjunRi5PmKMKJWK3oIsLAmIo7voVo3eMyfVBGQt8H2K

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-07 18:36:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16489)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    category character varying(50) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL,
    rating numeric(3,1),
    is_available boolean DEFAULT true,
    release_date date NOT NULL,
    description text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16488)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 4856 (class 2604 OID 16492)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 16489)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, category, price, stock_quantity, rating, is_available, release_date, description) FROM stdin;
2	Smartphone X	Electronics	899.99	45	4.7	t	2023-09-15	Latest flagship smartphone with advanced camera
3	Wireless Earbuds	Electronics	129.99	78	4.5	t	2023-07-20	True wireless earbuds with noise cancellation
4	Smart Watch Pro	Electronics	249.99	32	4.3	t	2023-11-05	Health and fitness tracking smartwatch
5	Laptop Ultra	Electronics	1299.99	15	4.8	t	2023-08-10	Ultralight laptop with all-day battery life
6	Bluetooth Speaker	Electronics	79.99	60	4.2	t	2023-03-25	Portable speaker with rich bass
7	Tablet Mini	Electronics	349.99	25	4.4	t	2023-10-12	Compact tablet for entertainment and work
8	Gaming Console	Electronics	499.99	8	4.9	t	2023-12-01	Next-gen gaming with 4K support
9	Wireless Charger	Electronics	39.99	94	4.0	t	2023-02-14	Fast wireless charging pad
10	Smart Home Hub	Electronics	129.99	37	4.1	t	2023-05-30	Control all your smart devices
11	Premium Headphones	Electronics	199.99	22	4.6	t	2023-07-07	Over-ear headphones with studio quality sound
12	Cotton T-shirt	Clothing	19.99	120	4.3	t	2023-04-10	Comfortable everyday t-shirt
13	Jeans Classic	Clothing	49.99	85	4.5	t	2023-03-15	Classic fit denim jeans
14	Winter Jacket	Clothing	89.99	32	4.7	t	2023-09-20	Warm insulated winter jacket
15	Running Shoes	Clothing	79.99	45	4.6	t	2023-06-12	Lightweight shoes for runners
16	Summer Dress	Clothing	39.99	28	4.2	t	2023-05-05	Flowy summer dress with floral pattern
17	Casual Shorts	Clothing	29.99	67	4.0	t	2023-04-22	Comfortable everyday shorts
18	Premium Sweater	Clothing	59.99	42	4.4	t	2023-08-30	Soft wool blend sweater
19	Business Shirt	Clothing	45.99	53	4.1	t	2023-07-25	Formal shirt for professional settings
20	Athletic Socks	Clothing	12.99	110	3.9	t	2023-02-10	Pack of 6 athletic performance socks
21	Designer Scarf	Clothing	34.99	25	4.3	f	2023-10-15	Elegant patterned scarf
22	Coffee Maker	Home	89.99	28	4.5	t	2023-03-10	Programmable drip coffee maker
23	Blender Pro	Home	69.99	36	4.3	t	2023-05-20	High-powered blender for smoothies
24	Toaster Deluxe	Home	49.99	42	4.0	t	2022-11-15	Four-slot stainless steel toaster
25	Bedding Set	Home	79.99	18	4.7	t	2023-07-25	Luxury cotton bedding set
26	Floor Lamp	Home	59.99	24	4.2	t	2023-08-05	Modern standing lamp for living room
27	Kitchen Knife Set	Home	129.99	15	4.8	t	2023-09-18	Professional grade kitchen knife set
28	Vacuum Cleaner	Home	149.99	12	4.6	t	2023-04-30	Bagless vacuum with HEPA filter
29	Dinner Plate Set	Home	39.99	30	4.4	t	2023-06-12	Set of 6 ceramic dinner plates
30	Premium Towels	Home	29.99	48	4.1	t	2023-02-28	Soft cotton bath towels set of 4
31	Wall Clock	Home	24.99	35	3.9	t	2022-12-10	Modern design wall clock
32	Mystery Novel	Books	14.99	85	4.4	t	2023-07-15	Bestselling mystery novel
33	Cookbook	Books	24.99	42	4.6	t	2023-05-22	Collection of gourmet recipes
34	Science Fiction	Books	12.99	63	4.2	t	2023-08-30	Award-winning sci-fi thriller
35	Self-Help Guide	Books	18.99	55	4.5	t	2023-03-12	Popular self-improvement book
36	History Book	Books	22.99	28	4.3	t	2023-04-05	Comprehensive historical account
37	Children's Story	Books	9.99	72	4.7	t	2023-06-18	Illustrated children's book
38	Biography	Books	19.99	36	4.1	t	2023-09-25	Biography of a famous figure
39	Programming Guide	Books	39.99	25	4.8	t	2023-10-10	Comprehensive programming reference
40	Art Book	Books	49.99	12	4.4	f	2023-11-05	Coffee table book of famous artworks
41	Poetry Collection	Books	17.99	20	4.0	t	2023-07-30	Collection of contemporary poems
42	Building Blocks	Toys	29.99	45	4.6	t	2023-05-15	Creative building blocks set
43	Board Game	Toys	34.99	32	4.7	t	2023-08-22	Family-friendly strategy board game
44	Action Figure	Toys	19.99	60	4.3	t	2023-07-10	Collectible action figure
45	Puzzle Set	Toys	14.99	38	4.1	t	2023-04-18	1000-piece jigsaw puzzle
46	Remote Car	Toys	49.99	22	4.5	t	2023-09-30	Remote controlled racing car
47	Stuffed Animal	Toys	24.99	48	4.8	t	2023-06-25	Soft plush stuffed animal
48	Art Kit	Toys	19.99	36	4.2	t	2023-03-20	Creative art supplies for kids
49	Science Kit	Toys	29.99	25	4.4	t	2023-10-05	Educational science experiments kit
50	Doll House	Toys	79.99	10	4.6	t	2023-11-15	Detailed miniature doll house
51	Outdoor Play Set	Toys	149.99	5	4.9	f	2023-12-01	Backyard play set with swings
52	Notebook Pack	Stationery	12.99	95	4.3	t	2023-01-15	Set of 3 premium notebooks
53	Fountain Pen	Stationery	24.99	42	4.7	t	2023-02-20	Elegant writing fountain pen
54	Desk Organizer	Stationery	19.99	38	4.2	t	2023-03-10	Multi-compartment desk organizer
55	Premium Journal	Stationery	29.99	25	4.5	t	2023-05-05	Leather-bound writing journal
56	Colored Pencils	Stationery	15.99	60	4.4	t	2023-06-12	Set of 24 artist quality colored pencils
57	Sticky Notes	Stationery	7.99	110	4.0	t	2023-04-22	Assorted sizes and colors sticky notes
58	Desk Lamp	Stationery	34.99	28	4.3	t	2023-07-30	Adjustable LED desk lamp
59	Filing Cabinet	Stationery	129.99	12	4.6	t	2023-08-15	Two-drawer metal filing cabinet
60	Planner	Stationery	18.99	45	4.5	t	2023-09-22	Annual daily planner and organizer
61	Premium Stapler	Stationery	16.99	35	4.1	t	2023-01-30	Heavy duty desktop stapler
\.


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 61, true);


--
-- TOC entry 4859 (class 2606 OID 16503)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


-- Completed on 2025-10-07 18:36:48

--
-- PostgreSQL database dump complete
--

\unrestrict 6tC34Ud4pexz18E7JrulXjunRi5PmKMKJWK3oIsLAmIo7voVo3eMyfVBGQt8H2K

