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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 218, 219, 2018, 'Final', 4, 2);
INSERT INTO public.games VALUES (2, 220, 221, 2018, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (3, 219, 221, 2018, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (4, 218, 220, 2018, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (5, 219, 222, 2018, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (6, 221, 223, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (7, 220, 224, 2018, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (8, 218, 225, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (9, 221, 226, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (10, 223, 227, 2018, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (11, 220, 228, 2018, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (12, 224, 229, 2018, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (13, 219, 230, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (14, 222, 231, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (15, 225, 232, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (16, 218, 233, 2018, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (17, 234, 233, 2014, 'Final', 1, 0);
INSERT INTO public.games VALUES (18, 235, 224, 2014, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (19, 233, 235, 2014, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (20, 234, 224, 2014, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (21, 235, 236, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (22, 233, 220, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (23, 224, 226, 2014, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (24, 234, 218, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (25, 224, 237, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (26, 226, 225, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (27, 218, 238, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (28, 234, 239, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (29, 235, 229, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (30, 236, 240, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (31, 233, 227, 2014, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (32, 220, 241, 2014, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (218, 'France');
INSERT INTO public.teams VALUES (219, 'Croatia');
INSERT INTO public.teams VALUES (220, 'Belgium');
INSERT INTO public.teams VALUES (221, 'England');
INSERT INTO public.teams VALUES (222, 'Russia');
INSERT INTO public.teams VALUES (223, 'Sweden');
INSERT INTO public.teams VALUES (224, 'Brazil');
INSERT INTO public.teams VALUES (225, 'Uruguay');
INSERT INTO public.teams VALUES (226, 'Colombia');
INSERT INTO public.teams VALUES (227, 'Switzerland');
INSERT INTO public.teams VALUES (228, 'Japan');
INSERT INTO public.teams VALUES (229, 'Mexico');
INSERT INTO public.teams VALUES (230, 'Denmark');
INSERT INTO public.teams VALUES (231, 'Spain');
INSERT INTO public.teams VALUES (232, 'Portugal');
INSERT INTO public.teams VALUES (233, 'Argentina');
INSERT INTO public.teams VALUES (234, 'Germany');
INSERT INTO public.teams VALUES (235, 'Netherlands');
INSERT INTO public.teams VALUES (236, 'Costa Rica');
INSERT INTO public.teams VALUES (237, 'Chile');
INSERT INTO public.teams VALUES (238, 'Nigeria');
INSERT INTO public.teams VALUES (239, 'Algeria');
INSERT INTO public.teams VALUES (240, 'Greece');
INSERT INTO public.teams VALUES (241, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 241, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

