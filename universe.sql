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
-- Name: constillation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constillation (
    constillation_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.constillation OWNER TO freecodecamp;

--
-- Name: constillation_con_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constillation_con_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constillation_con_id_seq OWNER TO freecodecamp;

--
-- Name: constillation_con_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constillation_con_id_seq OWNED BY public.constillation.constillation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age numeric,
    galaxy_type character varying(30),
    star_id integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_gravity boolean,
    size integer,
    planet_id integer
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
    name character varying(40) NOT NULL,
    description text,
    rotation integer,
    revolution integer,
    star_id integer
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: constillation constillation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constillation ALTER COLUMN constillation_id SET DEFAULT nextval('public.constillation_con_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: constillation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constillation VALUES (1, 1, 'aries');
INSERT INTO public.constillation VALUES (2, 2, 'aquarius');
INSERT INTO public.constillation VALUES (3, 3, 'leo');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'backward galaxy', 'rotates backward', 200, 'back', 1);
INSERT INTO public.galaxy VALUES (8, 'milky way', 'our galaxy', 300, 'milky', 2);
INSERT INTO public.galaxy VALUES (9, 'pinwheel', 'looks like wheel', 100, 'pin', 3);
INSERT INTO public.galaxy VALUES (10, 'malin 1', 'david malin', 150, 'malin', 4);
INSERT INTO public.galaxy VALUES (11, 'needle galaxy', 'thin looking', 250, 'needle', 5);
INSERT INTO public.galaxy VALUES (12, 'butterfly', 'butterfly looking', 300, 'butterfly', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'our moon', false, 3476, 3);
INSERT INTO public.moon VALUES (2, 'ph', 'sm', false, 145, 1);
INSERT INTO public.moon VALUES (3, 'jk', 'nd', false, 564, 8);
INSERT INTO public.moon VALUES (4, 'jdf', 'dwd', false, 548, 7);
INSERT INTO public.moon VALUES (5, 'wed', 'ews', false, 785, 5);
INSERT INTO public.moon VALUES (6, 'wedsdx', 'wewds', false, 752, 6);
INSERT INTO public.moon VALUES (7, 'ph', 'sm', false, 145, 1);
INSERT INTO public.moon VALUES (8, 'jk', 'nd', false, 564, 8);
INSERT INTO public.moon VALUES (9, 'jdf', 'dwd', false, 548, 7);
INSERT INTO public.moon VALUES (10, 'wed', 'ews', false, 785, 5);
INSERT INTO public.moon VALUES (11, 'wedsdx', 'wewds', false, 752, 6);
INSERT INTO public.moon VALUES (12, 'ph', 'sm', false, 145, 1);
INSERT INTO public.moon VALUES (13, 'jk', 'nd', false, 564, 8);
INSERT INTO public.moon VALUES (14, 'jdf', 'dwd', false, 548, 7);
INSERT INTO public.moon VALUES (15, 'wed', 'ews', false, 785, 5);
INSERT INTO public.moon VALUES (16, 'wedsdx', 'wewds', false, 752, 6);
INSERT INTO public.moon VALUES (17, 'ph', 'sm', false, 145, 1);
INSERT INTO public.moon VALUES (18, 'jk', 'nd', false, 564, 8);
INSERT INTO public.moon VALUES (19, 'jdf', 'dwd', false, 548, 7);
INSERT INTO public.moon VALUES (20, 'wed', 'ews', false, 785, 5);
INSERT INTO public.moon VALUES (21, 'wedsdx', 'wewds', false, 752, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'closest to sun', 58, 24, 1);
INSERT INTO public.planet VALUES (2, 'venus', 'enif', 243, 62, 3);
INSERT INTO public.planet VALUES (3, 'earth', 'our planet', 365, 24, 2);
INSERT INTO public.planet VALUES (4, 'mars', 'red planet', 380, 48, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', 'biggest', 50, 45, 5);
INSERT INTO public.planet VALUES (6, 'saturn', 'rings', 30, 1, 6);
INSERT INTO public.planet VALUES (7, 'uranus', 'after jup', 85, 2, 6);
INSERT INTO public.planet VALUES (8, 'neptune', 'farthest', 165, 3, 5);
INSERT INTO public.planet VALUES (9, 'ceres', 'white', 5, 1, 4);
INSERT INTO public.planet VALUES (10, 'pluto', 'not planet', 250, 10, 3);
INSERT INTO public.planet VALUES (11, 'eris', 'big', 570, 15, 2);
INSERT INTO public.planet VALUES (12, 'varda', 'small', 320, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'hamal', 'shines bright', 66, false, 7);
INSERT INTO public.star VALUES (2, 'sun', 'earth star', 50, true, 8);
INSERT INTO public.star VALUES (3, 'enif', 'far', 100, true, 9);
INSERT INTO public.star VALUES (4, 'regulus', 'regular', 80, false, 10);
INSERT INTO public.star VALUES (5, 'diphada', 'deep', 90, true, 11);
INSERT INTO public.star VALUES (6, 'spica', 'spice', 65, true, 12);


--
-- Name: constillation_con_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constillation_con_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constillation constillation_id_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constillation
    ADD CONSTRAINT constillation_id_pk PRIMARY KEY (constillation_id);


--
-- Name: constillation constillation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constillation
    ADD CONSTRAINT constillation_name_key UNIQUE (name);


--
-- Name: constillation constillation_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constillation
    ADD CONSTRAINT constillation_planet_id_key UNIQUE (planet_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

