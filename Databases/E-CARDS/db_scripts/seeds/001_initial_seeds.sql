-- Seed collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed types
INSERT INTO tbl_types (typeName)
VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting');

-- Seed stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed cards (linking to collections, types, and stages)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberCollection, collection_id, type_id, stage_id
)
VALUES
-- Charizard from Base Set
(120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', 'None', '3',
 4, 1, 1, 3),

-- Blastoise from Base Set
(100, 'Blastoise', 'Shellfish Pokémon', 'Hydro Pump', '40+', 'Electric', 'None', '3',
 2, 1, 2, 3),

-- Pikachu from Jungle
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'None', '1',
 27, 2, 4, 1),

-- Scyther from Jungle
(70, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'None', '1',
 10, 2, 3, 1),

-- Gengar from Fossil
(80, 'Gengar', 'Shadow Pokémon', 'Nightmare', '30', 'Psychic', 'None', '1',
 5, 3, 5, 3);
