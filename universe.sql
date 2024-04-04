--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(20) NOT NULL,
    length integer,
    num_stars integer,
    num_bars integer,
    uni integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    orbital_radius numeric(6,2),
    planet_id integer NOT NULL,
    is_cheese boolean,
    uni integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_water boolean,
    has_life boolean,
    star_id integer NOT NULL,
    uni integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    random_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rando character varying(20),
    rando2 character varying(20)
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_random_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_random_id_seq OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_random_id_seq OWNED BY public.random.random_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    radius integer,
    galaxy_id integer NOT NULL,
    temp integer,
    uni integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: random random_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random ALTER COLUMN random_id SET DEFAULT nextval('public.random_random_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Bay', 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Slay', 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Slays', 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Flays', 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Grays', 100, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 20.33, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'the poon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'the loon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'the aoon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'the boon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'the doon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'the eoon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'the foon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'the goon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'the hoon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'the ioon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'the joon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'the noon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'the ooon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'the poon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'the qoon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'the roon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'the soon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'the toon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'the uoon', 20.33, 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'the voon', 20.33, 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'bearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'dearth', NULL, true, NULL, 2, NULL);
INSERT INTO public.planet VALUES (4, 'cearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'fearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'gearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'hearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'iearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'jearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'kearth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'learth', NULL, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'mearth', NULL, true, NULL, 1, NULL);


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES (1, 'a', NULL, NULL);
INSERT INTO public.random VALUES (2, 'b', NULL, NULL);
INSERT INTO public.random VALUES (3, 'c', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 10, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'run', 10, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'fun', 10, 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'dun', 10, 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'pun', 10, 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'gun', 120, 2, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: random_random_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_random_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uni_key UNIQUE (uni);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uni_key UNIQUE (uni);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uni_key UNIQUE (uni);


--
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: random random_rando2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_rando2_key UNIQUE (rando2);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uni_key UNIQUE (uni);


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

