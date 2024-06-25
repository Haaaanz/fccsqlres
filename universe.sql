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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_mils integer,
    dist_from_earth integer
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_mils integer,
    dist_from_earth integer,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_mils integer,
    dist_from_earth integer,
    has_life boolean,
    gravity numeric(6,3),
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_mils integer,
    dist_from_earth integer,
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bs_num integer NOT NULL
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'catalog numbers NGC 224 and M31', 2480000, 965);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf Galaxy', 'Canis Major Dwarf Galaxy, member of the Local Group of galaxies (the group that includes the Milky Way Galaxy) ', 1000, 25000);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'Cygnus A, most powerful cosmic source of radio waves known', 1020, 500000000);
INSERT INTO public.galaxy VALUES (4, 'Maffei 1', 'Later studies established that the objects are galaxies. Lying near the border between the constellations Perseus and Cassiopeia', 1652, 9800000);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Cloud', 'Magellanic Cloud, either of two satellite galaxies of the Milky Way Galaxy, the vast star system of which Earth is a minor component.', 1342, 160000);
INSERT INTO public.galaxy VALUES (6, 'Milky Way Galaxy', 'Milky Way Galaxy, large spiral system consisting of several hundred billion stars, one of which is the Sun.', 0, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'our Moon', 45, 1, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon1', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (3, 'Moon2', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (4, 'Moon3', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (5, '1Moon3', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (6, '21Moon3', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (7, '321Moon3', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (8, '321Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (9, '4Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (10, '5Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (11, '6Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (12, '7Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (13, '8Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (14, '9Moon31', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (15, '10Moon', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (16, '11Moon', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (17, '12Moon', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (18, '13Moon', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (19, '14Moon', 'random moon', 45, 1, true, 10);
INSERT INTO public.moon VALUES (20, '15Moon', 'random moon', 45, 1, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth', 45, 0, true, 10.000, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'Mercury', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Venus', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune', 45, 1, false, 10.000, 1);
INSERT INTO public.planet VALUES (9, 'sakjsd', 'asdasdasdasd', 45, 1, false, 10.000, 2);
INSERT INTO public.planet VALUES (10, 'ssdsakjsd', 'asdasdasdasdda', 45, 1, false, 10.000, 2);
INSERT INTO public.planet VALUES (11, 'qewqe33', 'qwetgdf', 45, 1, false, 10.000, 2);
INSERT INTO public.planet VALUES (12, 'ppoijkm', 'aljlkjkj', 45, 1, false, 10.000, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Sun', 0, 0, 6);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Proxima', 1, 4, 6);
INSERT INTO public.star VALUES (3, 'Barnards star', 'Barns', 2, 6, 6);
INSERT INTO public.star VALUES (4, 'Wolf 359', 'Barns', 3, 8, 6);
INSERT INTO public.star VALUES (5, 'Alpha Canis Majoris', 'Sirius A', 4, 9, 6);
INSERT INTO public.star VALUES (6, 'Ran', 'Ran', 5, 10, 6);
INSERT INTO public.star VALUES (7, 'Ross 128', 'Ross 128', 5, 11, 6);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'foo', 12312);
INSERT INTO public.test VALUES (2, 'baa', 897987);
INSERT INTO public.test VALUES (3, 'fii', 132312);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_key UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


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

