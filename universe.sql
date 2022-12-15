--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    black_hole_num integer DEFAULT 0 NOT NULL,
    god_id integer NOT NULL,
    radius integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.god (
    god_id integer NOT NULL,
    name character varying(30) NOT NULL,
    condition character varying(30)
);


ALTER TABLE public.god OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.god_god_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.god_god_id_seq OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.god_god_id_seq OWNED BY public.god.god_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    crater_num integer DEFAULT 0 NOT NULL,
    planet_id integer NOT NULL,
    has_mochi boolean DEFAULT false NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_habitable boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    motif character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    energy_level numeric(12,2) DEFAULT 0 NOT NULL,
    star_word text DEFAULT ''::text NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: god god_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god ALTER COLUMN god_id SET DEFAULT nextval('public.god_god_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Chronicle', 158, 1, 12752784);
INSERT INTO public.galaxy VALUES (3, 'Swesthentle', 18, 3, 52784);
INSERT INTO public.galaxy VALUES (4, 'Napskreiv', 751, 2, 19852512);
INSERT INTO public.galaxy VALUES (5, 'Fraimvew', 3849214, 2, 995283912);
INSERT INTO public.galaxy VALUES (6, 'Ramsgraiver', 2, 3, 4621);
INSERT INTO public.galaxy VALUES (7, 'Phancalchaiser', 5, 1, 17462174);


--
-- Data for Name: god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.god VALUES (1, 'Poseidon', 'not bad');
INSERT INTO public.god VALUES (2, 'Zeus', 'pretty good');
INSERT INTO public.god VALUES (3, 'Apollon', 'catch a cold');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 17524, 5, true);
INSERT INTO public.moon VALUES (2, 'Deimos', 5821, 8, false);
INSERT INTO public.moon VALUES (3, 'Lysithea', 277, 10, false);
INSERT INTO public.moon VALUES (4, 'Hermippe', 1, 12, true);
INSERT INTO public.moon VALUES (5, 'Hegomome', 513856, 1, true);
INSERT INTO public.moon VALUES (6, 'Kale', 841, 5, true);
INSERT INTO public.moon VALUES (7, 'Tethys', 991, 9, false);
INSERT INTO public.moon VALUES (8, 'Prometheus', 19486150, 11, true);
INSERT INTO public.moon VALUES (9, 'Pandora', 54, 2, false);
INSERT INTO public.moon VALUES (10, 'Kiviuq', 1586, 10, false);
INSERT INTO public.moon VALUES (11, 'Skathi', 241726, 6, true);
INSERT INTO public.moon VALUES (12, 'Suttungr', 357, 12, false);
INSERT INTO public.moon VALUES (13, 'Loge', 178515, 5, true);
INSERT INTO public.moon VALUES (14, 'Umbriel', 127, 8, true);
INSERT INTO public.moon VALUES (15, 'Belinda', 18956195, 7, false);
INSERT INTO public.moon VALUES (16, 'Setebos', 4, 12, false);
INSERT INTO public.moon VALUES (17, 'Triton', 12486252, 3, true);
INSERT INTO public.moon VALUES (18, 'Despine', 28, 1, false);
INSERT INTO public.moon VALUES (19, 'Neso', 2857, 4, false);
INSERT INTO public.moon VALUES (20, 'Actae', 1276521, 10, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Gaspla', false, 4, 'Gas');
INSERT INTO public.planet VALUES (2, 'Sednoise', true, 1, 'Pen');
INSERT INTO public.planet VALUES (3, 'Vulcan', true, 6, 'Fire');
INSERT INTO public.planet VALUES (4, 'Sedna', true, 5, 'Tree');
INSERT INTO public.planet VALUES (5, 'Uranus', false, 4, 'River');
INSERT INTO public.planet VALUES (6, 'Makemake', false, 1, 'Gold');
INSERT INTO public.planet VALUES (7, 'Thesia', true, 5, 'Phone');
INSERT INTO public.planet VALUES (8, 'Phaeton', true, 2, 'Paper');
INSERT INTO public.planet VALUES (9, 'Eris', false, 4, 'Speaker');
INSERT INTO public.planet VALUES (10, 'Venus', true, 3, 'Bicycle');
INSERT INTO public.planet VALUES (11, 'Pluto', true, 2, 'Comuter');
INSERT INTO public.planet VALUES (12, 'Haumea', false, 1, 'Sea');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sphysphre', 24761.57, 'lots of happiness', 3);
INSERT INTO public.star VALUES (2, 'Lustwincs', 589152.21, 'mirror of mirror', 7);
INSERT INTO public.star VALUES (3, 'Kircats', 472.59, 'lack of malice', 2);
INSERT INTO public.star VALUES (4, 'Yaphendruke', 93814.92, 'special thanks', 3);
INSERT INTO public.star VALUES (5, 'wronmophena', 417265.83, 'seeking for long time', 7);
INSERT INTO public.star VALUES (6, 'tophenzark', 572.12, 'lots of love in buscket', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: god_god_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.god_god_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: god god_god_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_god_id_key UNIQUE (god_id);


--
-- Name: god god_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_pkey PRIMARY KEY (god_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_god_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_god_id_fkey FOREIGN KEY (god_id) REFERENCES public.god(god_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

