
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    diameter_km INT,
    distance_from_earth_km INT,
    age_in_million_years NUMERIC(5, 1),
    discovered_before_20th_century BOOLEAN,
    reached_by_space_probe BOOLEAN,
    astronomer_discoverer_id INT
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    diameter_km INT,
    distance_from_earth_km INT,
    age_in_million_years NUMERIC(5, 1),
    discovered_before_20th_century BOOLEAN,
    reached_by_space_probe BOOLEAN,
    astronomer_discoverer_id INT,
    galaxy_id INT,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id)
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    diameter_km INT,
    distance_from_earth_km INT,
    age_in_million_years NUMERIC(5, 1),
    discovered_before_20th_century BOOLEAN,
    reached_by_space_probe BOOLEAN,
    astronomer_discoverer_id INT,
    star_id INT,
    FOREIGN KEY (star_id) REFERENCES star (star_id)
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    diameter_km INT,
    distance_from_earth_km INT,
    age_in_million_years NUMERIC(5, 1),
    discovered_before_20th_century BOOLEAN,
    reached_by_space_probe BOOLEAN,
    astronomer_discoverer_id INT,
    planet_id INT,
    FOREIGN KEY (planet_id) REFERENCES planet (planet_id)
);

