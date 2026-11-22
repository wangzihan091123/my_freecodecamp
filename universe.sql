--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(50) NOT NULL,
    earth_id integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_number_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_number_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_number_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_number_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth integer,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_number_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_number_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_number_seq OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_number_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_number_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_number_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('Earth', 1, true);
INSERT INTO public.earth VALUES ('Kepler-452b', 2, false);
INSERT INTO public.earth VALUES ('Proxima b', 3, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy', true, 13600, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'The nearest large galaxy to the Milky Way', false, 10000, 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 'A spiral galaxy in the Local Group', false, 12000, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'A famous spiral galaxy', false, 13000, 4);
INSERT INTO public.galaxy VALUES ('Sombrero', 'A galaxy with a bright central bulge', false, 13000, 5);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 'A satellite galaxy of the Milky Way', false, 13000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Phobos', 4500, false, false, 'Inner moon of Mars', 78, 1, 4);
INSERT INTO public.moon VALUES ('Deimos', 4500, false, false, 'Outer moon of Mars', 78, 2, 4);
INSERT INTO public.moon VALUES ('Io', 4500, false, true, 'Volcanic moon of Jupiter', 628, 3, 5);
INSERT INTO public.moon VALUES ('Europa', 4500, false, true, 'Icy moon of Jupiter', 628, 4, 5);
INSERT INTO public.moon VALUES ('Ganymede', 4500, false, true, 'Largest moon in the solar system', 628, 5, 5);
INSERT INTO public.moon VALUES ('Callisto', 4500, false, true, 'Ancient moon of Jupiter', 628, 6, 5);
INSERT INTO public.moon VALUES ('Amalthea', 4500, false, false, 'Small moon of Jupiter', 628, 7, 5);
INSERT INTO public.moon VALUES ('Titan', 4500, false, true, 'Largest moon of Saturn', 1275, 8, 6);
INSERT INTO public.moon VALUES ('Enceladus', 4500, false, true, 'Icy moon of Saturn', 1275, 9, 6);
INSERT INTO public.moon VALUES ('Rhea', 4500, false, true, 'Second largest moon of Saturn', 1275, 10, 6);
INSERT INTO public.moon VALUES ('Iapetus', 4500, false, true, 'Two toned moon of Saturn', 1275, 11, 6);
INSERT INTO public.moon VALUES ('Dione', 4500, false, true, 'Moon of Saturn', 1275, 12, 6);
INSERT INTO public.moon VALUES ('Tethys', 4500, false, true, 'Icy moon of Saturn', 1275, 13, 6);
INSERT INTO public.moon VALUES ('Mimas', 4500, false, true, 'Small moon of Saturn', 1275, 14, 6);
INSERT INTO public.moon VALUES ('Titania', 4500, false, true, 'Largest moon of Uranus', 2723, 15, 7);
INSERT INTO public.moon VALUES ('Oberon', 4500, false, true, 'Outer moon of Uranus', 2723, 16, 7);
INSERT INTO public.moon VALUES ('Triton', 4500, false, true, 'Largest moon of Neptune', 4351, 17, 8);
INSERT INTO public.moon VALUES ('Charon', 4500, false, true, 'Largest moon of Pluto', 5900, 18, 9);
INSERT INTO public.moon VALUES ('Dysnomia', 4500, false, true, 'Moon of Eris', 9500, 19, 11);
INSERT INTO public.moon VALUES ('Hiaka', 4500, false, true, 'Moon of Haumea', 7500, 20, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 'Smallest planet', false, true, 4500, 91, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 'Hottest planet', false, true, 4500, 42, 2, 1);
INSERT INTO public.planet VALUES ('Earth', 'Our home planet', true, true, 4500, 0, 3, 1);
INSERT INTO public.planet VALUES ('Mars', 'The red planet', false, true, 4500, 78, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'Largest planet', false, true, 4500, 628, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 'Planet with rings', false, true, 4500, 1275, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 'Ice giant', false, true, 4500, 2723, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 'Farthest major planet', false, true, 4500, 4351, 8, 1);
INSERT INTO public.planet VALUES ('Pluto', 'Dwarf planet', false, true, 4500, 5900, 9, 1);
INSERT INTO public.planet VALUES ('Ceres', 'Dwarf planet', false, true, 4500, 260, 10, 1);
INSERT INTO public.planet VALUES ('Eris', 'Distant dwarf planet', false, true, 4500, 9500, 11, 1);
INSERT INTO public.planet VALUES ('Haumea', 'Dwarf planet', false, true, 4500, 7500, 12, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'Center of our solar system', true, true, 4600, 0, 1, 1);
INSERT INTO public.star VALUES ('Sirius', 'Brightest star in the night sky', false, true, 242, 8, 2, 1);
INSERT INTO public.star VALUES ('Vega', 'Bright star in Lyra', false, true, 455, 25, 3, 1);
INSERT INTO public.star VALUES ('Polaris', 'The North Star', false, true, 7000, 447, 4, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 'Red supergiant star', false, true, 10000, 548, 5, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 'Closest star to the Sun', false, true, 4850, 4, 6, 1);


--
-- Name: earth_earth_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_number_seq', 3, true);


--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_number_seq', 6, true);


--
-- Name: moon_moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_number_seq', 20, true);


--
-- Name: planet_planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_number_seq', 12, true);


--
-- Name: star_star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_number_seq', 12, true);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: earth unique_earth_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT unique_earth_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: moon moon_planet_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_number_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_number_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_number_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

