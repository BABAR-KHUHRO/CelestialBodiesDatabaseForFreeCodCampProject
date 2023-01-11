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
    galaxy_name character varying(25) NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    radius_in_km numeric,
    description text,
    name character varying(25),
    galaxyunique integer,
    galaxdatee date
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.glaxy_glaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.glaxy_glaxy_id_seq OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.glaxy_glaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_type character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    radius_in_km numeric,
    description text,
    moon_name character varying(25) NOT NULL,
    name character varying(25),
    moonunique integer,
    moonuue text,
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
    planet_name character varying(25) NOT NULL,
    planet_type character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    radius_in_km numeric,
    description text,
    name character varying(25),
    planetunique integer,
    planunique character varying(90),
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
-- Name: sixth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sixth (
    sixth_id integer NOT NULL,
    sixth_type character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    radius_in_km numeric,
    description text,
    sixth_name character varying(25) NOT NULL,
    name character varying(25),
    sixthunique integer,
    sixunique boolean
);


ALTER TABLE public.sixth OWNER TO freecodecamp;

--
-- Name: sixth_sixth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sixth_sixth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sixth_sixth_id_seq OWNER TO freecodecamp;

--
-- Name: sixth_sixth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sixth_sixth_id_seq OWNED BY public.sixth.sixth_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(25) NOT NULL,
    star_type character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    radius_in_km numeric,
    description text,
    name character varying(25),
    starunique integer,
    staque numeric,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.glaxy_glaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sixth sixth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sixth ALTER COLUMN sixth_id SET DEFAULT nextval('public.sixth_sixth_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'xyz', 'typea', false, false, true, 22, 10000, 99999, 'Nothing to say', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'mmm', 'KKKKK', false, true, false, 44, 1111111111, 55555555555, 'what should i write', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'mmm', 'KKKKK', false, true, false, 44, 1111111111, 55555555555, 'what should i write', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'mmm', 'KKKKK', false, true, false, 44, 1111111111, 55555555555, 'what should i write', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'mmm', 'KKKKK', false, true, false, 44, 1111111111, 55555555555, 'what should i write', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'mmmmmmmm', 'ttttttt', false, false, false, 99999999, 999999999, 888888888, 'Very much confusing', 'GALAXY', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'xtype', false, false, false, 22, 1000000, 19199999, 'nothing to say same like before', 'xyza', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'nnnnnnnnn', 'MOON19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'cdm', false, false, false, 4444, 99999, 444444, 'wowww', 'mmmmm', 'MOON20', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'xyza', 'xtype', false, false, false, 22, 1000000, 19199999, 'nothing to say same like before', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET2', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET3', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET4', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET5', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET6', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET7', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET8', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET9', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET10', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET11', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'PLANET12', NULL, NULL, NULL);


--
-- Data for Name: sixth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sixth VALUES (1, 'xtype', false, false, false, 22, 1000000, 19199999, 'nothing to say same like before', 'xyza', NULL, NULL, NULL);
INSERT INTO public.sixth VALUES (2, 'cdm', false, false, false, 4444, 99999, 444444, 'wowww', 'mmmmm', 'Sixth2', NULL, NULL);
INSERT INTO public.sixth VALUES (3, 'cdm', false, false, false, 4444, 99999, 444444, 'wowww', 'mmmmm', 'Sixth3', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'xyza', 'xtype', false, false, false, 22, 1000000, 19199999, 'nothing to say same like before', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'mmmmmmmm', 'ttttttt', false, false, false, 99999999, 999999999, 888888888, 'Very much confusing', 'MOON', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'mmmmmmmm', 'ttttttt', false, false, false, 99999999, 999999999, 888888888, 'Very much confusing', 'MOON', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'mmmmmmmm', 'ttttttt', false, false, false, 99999999, 999999999, 888888888, 'Very much confusing', 'MOON', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'mmmmmmmm', 'ttttttt', false, false, false, 99999999, 999999999, 888888888, 'Very much confusing', 'MOON', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'nnnnnnnnn', 'mmm', false, false, false, 99999, 999999, 88888888, 'i donot know', 'STAR6', NULL, NULL, NULL);


--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.glaxy_glaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: sixth_sixth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sixth_sixth_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy glaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT glaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonunique UNIQUE (moon_id);


--
-- Name: galaxy nextunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nextunique UNIQUE (galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planetunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetunique UNIQUE (planet_id);


--
-- Name: sixth sixth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sixth
    ADD CONSTRAINT sixth_pkey PRIMARY KEY (sixth_id);


--
-- Name: sixth sixthtunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sixth
    ADD CONSTRAINT sixthtunique UNIQUE (sixth_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star starrrrunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starrrrunique UNIQUE (star_id);


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

