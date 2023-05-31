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
-- Name: astronomer_discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer_discoverer (
    astronomer_discoverer_id integer NOT NULL,
    name character varying(50) NOT NULL,
    born_country character varying(40)
);


ALTER TABLE public.astronomer_discoverer OWNER TO freecodecamp;

--
-- Name: astronomers_astronomer_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomers_astronomer_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomers_astronomer_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomers_astronomer_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomers_astronomer_discoverer_id_seq OWNED BY public.astronomer_discoverer.astronomer_discoverer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    diameter_light_years integer,
    distance_from_earth_light_years integer,
    age_in_million_years numeric(10,1),
    discovered_before_20th_century boolean,
    reached_by_space_probe boolean,
    astronomer_discoverer_id integer
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
    description text NOT NULL,
    diameter_km integer,
    distance_from_earth_light_years integer,
    age_in_million_years numeric(10,1),
    discovered_before_20th_century boolean,
    reached_by_space_probe boolean,
    planet_id integer,
    astronomer_discoverer_id integer
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
    description text NOT NULL,
    diameter_km integer,
    distance_from_earth_light_years integer,
    age_in_million_years numeric(10,1),
    discovered_before_20th_century boolean,
    reached_by_space_probe boolean,
    star_id integer,
    astronomer_discoverer_id integer
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
    description text NOT NULL,
    diameter_km integer,
    distance_from_earth_light_years integer,
    age_in_million_years numeric(10,1),
    discovered_before_20th_century boolean,
    reached_by_space_probe boolean,
    galaxy_id integer,
    astronomer_discoverer_id integer
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
-- Name: astronomer_discoverer astronomer_discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_discoverer ALTER COLUMN astronomer_discoverer_id SET DEFAULT nextval('public.astronomers_astronomer_discoverer_id_seq'::regclass);


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
-- Data for Name: astronomer_discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is a barred spiral galaxy that contains our solar system.', 100000, 0, 13000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is a spiral galaxy and is the closest spiral galaxy to the Milky Way.', 220000, 2200000, 22000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum Galaxy is a spiral galaxy and is the third-largest member of the Local Group.', 50000, 3000000, 5000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Centaurus A is a peculiar elliptical galaxy with an active galactic nucleus.', 200000, 13000000, 13000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 'Messier 81 is a grand design spiral galaxy and one of the brightest galaxies visible from Earth.', 95000, 11800000, 6000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 'Messier 82 is a starburst galaxy and is undergoing a major episode of star formation.', 37000, 11800000, 6000.0, true, false, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 'The Whirlpool Galaxy is a grand design spiral galaxy and has a prominent companion galaxy.', 60000, 23000000, 25000.0, true, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'A small, rocky planet that is the closest to the Sun. It has no atmosphere and is covered in craters.', 4878, 0, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'A hot, dense planet that is covered in clouds of sulfuric acid. It is the hottest planet in the Solar system.', 12756, 0, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'The only planet known to support life. It is a blue planet with a large ocean and a variety of climates.', 12756, 1, 4.5, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'A cold, dry planet with a thin atmosphere. It is the fourth planet from the Sun and is the second smallest planet in the Solar system.', 6792, 1, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'A large, gas giant that is the largest planet in the Solar system. It has a strong magnetic field and a thick atmosphere.', 142984, 5, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant that is the second largest planet in the Solar system. It is known for its rings, which are made up of ice and dust.', 120536, 9, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'A gas giant that is tilted on its side. It is known for its blue-green color.', 51118, 19, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'A gas giant that is the farthest planet from the Sun. It is known for its Great Dark Spot, which is a large storm similar to the Great Red Spot on Jupiter.', 49532, 30, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'A rocky planet that orbits Proxima Centauri, the closest star to the Sun. It is the first planet to be found in the habitable zone of another star.', 1300, 4, 4.8, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 'A gas giant that orbits Proxima Centauri. It is much larger than Proxima Centauri b, and is not in the habitable zone.', 4200, 4, 1.2, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri A b', 'A gas giant that orbits Alpha Centauri A, the larger of the two stars in the Alpha Centauri binary system. It is not in the habitable zone.', 11200, 4, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri B b', 'A gas giant that orbits Alpha Centauri B, the smaller of the two stars in the Alpha Centauri binary system. It is not in the habitable zone.', 7100, 4, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Alpha Centauri B c', 'A rocky planet that orbits Alpha Centauri B. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 1400, 4, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1b', 'A rocky planet that orbits Trappist-1, a red dwarf star. It is the closest planet to its star, and has an orbital period of just 1.5 days.', 1700, 40, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1c', 'A rocky planet that orbits Trappist-1. It is slightly larger than TRAPPIST-1b, and has an orbital period of just 2.4 days.', 2400, 40, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1d', 'A rocky planet that orbits Trappist-1. It is slightly larger than TRAPPIST-1c, and has an orbital period of just 4.0 days.', 3100, 40, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'TRAPPIST-1e', 'A rocky planet that orbits Trappist-1. It is slightly larger than TRAPPIST-1d, and has an orbital period of just 6.0 days.', 4000, 40, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'TRAPPIST-1f', 'A rocky planet that orbits Trappist-1. It is slightly larger than TRAPPIST-1e, and has an orbital period of just 9.0 days.', 5000, 40, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Kepler-452b', 'A rocky planet that orbits Kepler-452, a G2V star that is similar to the Sun. It is the first planet to be found in the habitable zone of another star.', 1400, 1402, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Kepler-452c', 'A gas giant that orbits Kepler-452. It is much larger than Kepler-452b, and is not in the habitable zone.', 4800, 1402, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'Kepler-452d', 'A rocky planet that orbits Kepler-452. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 1200, 1402, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'Kepler-452e', 'A gas giant that orbits Kepler-452. It is not in the habitable zone.', 8800, 1402, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'Kepler-452f', 'A rocky planet that orbits Kepler-452. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 1000, 1402, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'HD 10180 b', 'A rocky planet that orbits HD 10180, a G-type star that is similar to the Sun. It is the first planet to be found in the habitable zone of another star.', 1300, 127, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'HD 10180 c', 'A gas giant that orbits HD 10180. It is much larger than HD 10180 b, and is not in the habitable zone.', 4200, 127, 1.2, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'HD 10180 d', 'A gas giant that orbits HD 10180. It is not in the habitable zone.', 11200, 127, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'HD 10180 e', 'A gas giant that orbits HD 10180. It is not in the habitable zone.', 7100, 127, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'HD 10180 f', 'A rocky planet that orbits HD 10180. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 1400, 127, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'GJ 667Cc', 'A rocky planet that orbits GJ 667C, a red dwarf star. It is the first planet to be found in the habitable zone of another star.', 1700, 22, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'GJ 667Cb', 'A gas giant that orbits GJ 667C. It is much larger than GJ 667Cc, and is not in the habitable zone.', 4200, 22, 1.2, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'GJ 667Ce', 'A rocky planet that orbits GJ 667C. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 2400, 22, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (32, 'GJ 667Cf', 'A rocky planet that orbits GJ 667C. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 3100, 22, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'GJ 667Cg', 'A gas giant that orbits GJ 667C. It is not in the habitable zone.', 7100, 22, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'Kepler-186f', 'A rocky planet that orbits Kepler-186, a red dwarf star. It is the first planet to be found in the habitable zone of another star.', 11100, 490, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'Kepler-186b', 'A gas giant that orbits Kepler-186. It is much larger than Kepler-186f, and is not in the habitable zone.', 4, 490, 1.2, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'Kepler-186c', 'A rocky planet that orbits Kepler-186. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 2400, 490, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'Kepler-186d', 'A rocky planet that orbits Kepler-186. It is in the habitable zone, but is too small to be considered a likely candidate for life.', 3100, 490, 4.5, false, false, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'Kepler-186e', 'A gas giant that orbits Kepler-186. It is not in the habitable zone.', 7, 490, 4.5, false, false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 'A triple star system that is the closest star system to the Sun. It has three stars: Alpha Centauri A, Alpha Centauri B, and Proxima Centauri. Proxima Centauri is the closest star to the Sun.', 1300, 4, 5.0, false, false, NULL, NULL);
INSERT INTO public.star VALUES (2, 'TRAPPIST-1', 'An ultracool dwarf star that has seven Earth-sized planets orbiting it. The planets are all located in the habitable zone, where liquid water could exist on the surface.', 80, 12, 10.0, true, false, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Kepler-452b', 'A planet that is similar to Earth in size and temperature. It is located in the habitable zone of its star, which means that liquid water could exist on its surface.', 1500, 1400, 6.0, false, false, NULL, NULL);
INSERT INTO public.star VALUES (4, 'HD 10180', 'A star that has seven planets orbiting it. Three of the planets are in the habitable zone, where liquid water could exist on the surface.', 1100, 130, 11.0, false, false, NULL, NULL);
INSERT INTO public.star VALUES (5, 'GJ 667C', 'A star that has four planets orbiting it. Two of the planets are in the habitable zone, where liquid water could exist on the surface.', 380, 23, 9.0, false, false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Kepler-186f', 'A planet that is similar to Earth in size and temperature. It is located in the habitable zone of its star, which means that liquid water could exist on its surface.', 1200, 490, 4.0, false, false, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Kepler-16b', 'A planet that is the first confirmed transiting exoplanet in a circumbinary planetary system. The planet orbits two stars, which are called Kepler-16A and Kepler-16B.', 1500, 220, 2.0, false, false, NULL, NULL);


--
-- Name: astronomers_astronomer_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomers_astronomer_discoverer_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 38, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astronomer_discoverer astronomers_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_discoverer
    ADD CONSTRAINT astronomers_name_key UNIQUE (name);


--
-- Name: astronomer_discoverer astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_discoverer
    ADD CONSTRAINT astronomers_pkey PRIMARY KEY (astronomer_discoverer_id);


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
-- Name: galaxy galaxy_astronomer_discoverer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_astronomer_discoverer_id_fkey FOREIGN KEY (astronomer_discoverer_id) REFERENCES public.astronomer_discoverer(astronomer_discoverer_id);


--
-- Name: moon moon_astronomer_discoverer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_astronomer_discoverer_id_fkey FOREIGN KEY (astronomer_discoverer_id) REFERENCES public.astronomer_discoverer(astronomer_discoverer_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_astronomer_discoverer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_astronomer_discoverer_id_fkey FOREIGN KEY (astronomer_discoverer_id) REFERENCES public.astronomer_discoverer(astronomer_discoverer_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_astronomer_discoverer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_astronomer_discoverer_id_fkey FOREIGN KEY (astronomer_discoverer_id) REFERENCES public.astronomer_discoverer(astronomer_discoverer_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

