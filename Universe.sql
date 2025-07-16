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

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    mass integer NOT NULL,
    color text,
    how_big numeric,
    unique_star text,
    unique_galaxy text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;
CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    color text NOT NULL,
    mass integer,
    radius numeric,
    unique_moon text,
    unique_planet text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;


CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;


ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;

CREATE TABLE planet (
    name character varying(30),
    planet_id integer NOT NULL,
    mass integer,
    color text NOT NULL,
    distance_from_earth numeric,
    unique_planet text,
    unique_moon text,
    star_id integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;

CREATE TABLE random_table (
    name character varying(30),
    random_table_id integer NOT NULL,
    random_planet integer NOT NULL
);


ALTER TABLE public.random_table OWNER TO freecodecamp;

CREATE SEQUENCE public.random_table_random_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_table_random_table_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.random_table_random_table_id_seq OWNED BY public.random_table.random_table_id;

CREATE TABLE star (
    name character varying(30),
    star_id integer NOT NULL,
    mass integer NOT NULL,
    color text,
    how_far numeric,
    unique_star text,
    unique_galaxy text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


ALTER TABLE ONLY public.random_table ALTER COLUMN random_table_id SET DEFAULT nextval('public.random_table_random_table_id_seq'::regclass);

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


INSERT INTO galaxy VALUES ('galaxy2', 2, 2, 'grey', 2.2, NULL, NULL);
INSERT INTO galaxy VALUES ('galaxy3', 3, 3, 'blue', 3.3, NULL, NULL);
INSERT INTO galaxy VALUES ('galaxy4', 4, 4, 'red', 4.4, NULL, NULL);
INSERT INTO galaxy VALUES ('galaxy5', 5, 5, 'blue', 5.5, NULL, NULL);
INSERT INTO galaxy VALUES ('galaxy6', 6, 6, 'green', 6.6, NULL, NULL);
INSERT INTO galaxy VALUES ('galaxy1', 1, 1, 'black', 1.1, 'special_star1', NULL);




INSERT INTO moon VALUES ('moon1', 1, 'grey', 1, 1.1, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon2', 2, 'black', 2, 2.2, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon3', 3, 'red', 3, 3.3, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon4', 4, 'grey', 4, 4.4, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon5', 5, 'grey', 5, 5.5, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon6', 6, 'black', 6, 6.6, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon7', 7, 'red', 7, 7.7, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon8', 8, 'black', 8, 8.8, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon9', 9, 'blue', 9, 9.9, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon10', 10, 'red', 10, 10.10, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon11', 11, 'black', 11, 11.11, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon12', 12, 'orange', 12, 12.12, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon13', 13, 'black', 13, 13.13, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon14', 14, 'red', 14, 14.14, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon15', 15, 'orange', 15, 15.15, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon16', 16, 'grey', 16, 16.16, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon17', 17, 'black', 17, 17.17, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon18', 18, 'grey', 18, 18.18, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon19', 19, 'blue', 19, 19.19, NULL, NULL, 1);
INSERT INTO moon VALUES ('moon20', 20, 'purple', 20, 20.20, NULL, NULL, 1);



INSERT INTO public.planet VALUES ('universe1', 1, 1, 'red', 1.1, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe2', 2, 2, 'blue', 2.2, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe3', 3, 3, 'black', 3.3, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe4', 4, 4, 'purple', 4.4, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe5', 5, 4, 'red', 5.5, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe6', 6, 6, 'blue', 6.6, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe7', 7, 7, 'black', 7.7, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe8', 8, 8, 'grey', 8.8, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe9', 9, 9, 'orange', 9.9, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe10', 10, 10, 'black', 10.10, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe11', 11, 11, 'red', 11.11, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('universe12', 12, 12, 'green', 12.12, NULL, NULL, 1, NULL, NULL);



INSERT INTO public.random_table VALUES (NULL, 3, 1);
INSERT INTO public.random_table VALUES (NULL, 4, 2);
INSERT INTO public.random_table VALUES (NULL, 5, 3);



INSERT INTO public.star VALUES ('star2', 2, 2, 'black', 2.2, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star3', 3, 3, 'blue', 3.3, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star4', 4, 4, 'red', 4.4, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star5', 5, 5, 'black', 5.5, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star6', 6, 6, 'green', 6.6, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star1', 1, 1, 'red', 1.1, 'special_star1', NULL, 1);



SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);



SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);



SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);




SELECT pg_catalog.setval('public.random_table_random_table_id_seq', 5, true);



SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);



ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);




ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_galaxy_key UNIQUE (unique_galaxy);




ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_star_key UNIQUE (unique_star);



ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);



ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_moon_key UNIQUE (unique_moon);

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_planet_key UNIQUE (unique_planet);


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_moon_key UNIQUE (unique_moon);


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_planet_key UNIQUE (unique_planet);



ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_pkey PRIMARY KEY (random_table_id);




ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_random_planet_key UNIQUE (random_planet);



ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


ALTER TABLE ONLY public.star


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_star_key UNIQUE (unique_star);




ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_star_fkey FOREIGN KEY (unique_star) REFERENCES public.star(unique_star);



ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


