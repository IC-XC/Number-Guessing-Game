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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_users_id_seq OWNER TO freecodecamp;

--
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 942);
INSERT INTO public.games VALUES (2, 10, 127);
INSERT INTO public.games VALUES (3, 11, 443);
INSERT INTO public.games VALUES (4, 11, 782);
INSERT INTO public.games VALUES (5, 10, 465);
INSERT INTO public.games VALUES (6, 10, 231);
INSERT INTO public.games VALUES (7, 10, 847);
INSERT INTO public.games VALUES (8, 12, 493);
INSERT INTO public.games VALUES (9, 12, 91);
INSERT INTO public.games VALUES (10, 13, 244);
INSERT INTO public.games VALUES (11, 13, 854);
INSERT INTO public.games VALUES (12, 12, 316);
INSERT INTO public.games VALUES (13, 12, 83);
INSERT INTO public.games VALUES (14, 12, 919);
INSERT INTO public.games VALUES (15, 14, 657);
INSERT INTO public.games VALUES (16, 14, 795);
INSERT INTO public.games VALUES (17, 15, 809);
INSERT INTO public.games VALUES (18, 15, 913);
INSERT INTO public.games VALUES (19, 14, 467);
INSERT INTO public.games VALUES (20, 14, 358);
INSERT INTO public.games VALUES (21, 14, 763);
INSERT INTO public.games VALUES (22, 16, 215);
INSERT INTO public.games VALUES (23, 16, 186);
INSERT INTO public.games VALUES (24, 17, 38);
INSERT INTO public.games VALUES (25, 17, 722);
INSERT INTO public.games VALUES (26, 16, 508);
INSERT INTO public.games VALUES (27, 16, 964);
INSERT INTO public.games VALUES (28, 16, 735);
INSERT INTO public.games VALUES (29, 18, 541);
INSERT INTO public.games VALUES (30, 20, 619);
INSERT INTO public.games VALUES (31, 20, 437);
INSERT INTO public.games VALUES (32, 18, 875);
INSERT INTO public.games VALUES (33, 18, 371);
INSERT INTO public.games VALUES (34, 18, 677);
INSERT INTO public.games VALUES (35, 21, 739);
INSERT INTO public.games VALUES (36, 21, 344);
INSERT INTO public.games VALUES (37, 22, 433);
INSERT INTO public.games VALUES (38, 22, 80);
INSERT INTO public.games VALUES (39, 21, 326);
INSERT INTO public.games VALUES (40, 21, 546);
INSERT INTO public.games VALUES (41, 21, 531);
INSERT INTO public.games VALUES (42, 23, 108);
INSERT INTO public.games VALUES (43, 24, 369);
INSERT INTO public.games VALUES (44, 24, 277);
INSERT INTO public.games VALUES (45, 23, 929);
INSERT INTO public.games VALUES (46, 23, 788);
INSERT INTO public.games VALUES (47, 23, 385);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1692188687077');
INSERT INTO public.users VALUES (2, 'user_1692188687076');
INSERT INTO public.users VALUES (3, 'user_1692190243618');
INSERT INTO public.users VALUES (4, 'user_1692190243617');
INSERT INTO public.users VALUES (5, 'Per');
INSERT INTO public.users VALUES (6, 'user_1692194984128');
INSERT INTO public.users VALUES (7, 'user_1692194984127');
INSERT INTO public.users VALUES (8, 'user_1692195036850');
INSERT INTO public.users VALUES (9, 'user_1692195036849');
INSERT INTO public.users VALUES (10, 'user_1692195140927');
INSERT INTO public.users VALUES (11, 'user_1692195140926');
INSERT INTO public.users VALUES (12, 'user_1692195192246');
INSERT INTO public.users VALUES (13, 'user_1692195192245');
INSERT INTO public.users VALUES (14, 'user_1692195268154');
INSERT INTO public.users VALUES (15, 'user_1692195268153');
INSERT INTO public.users VALUES (16, 'user_1692195369138');
INSERT INTO public.users VALUES (17, 'user_1692195369137');
INSERT INTO public.users VALUES (18, 'user_1692195401064');
INSERT INTO public.users VALUES (20, 'user_1692195401063');
INSERT INTO public.users VALUES (21, 'user_1692195442538');
INSERT INTO public.users VALUES (22, 'user_1692195442537');
INSERT INTO public.users VALUES (23, 'user_1692195745341');
INSERT INTO public.users VALUES (24, 'user_1692195745340');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_users_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


