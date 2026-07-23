-- 20 Pokémon TCG card inserts
INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberCollection, collection_id, type_id, stage_id)
VALUES
(120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', 'None', '3', 4, 1, 1, 3),
(100, 'Blastoise', 'Shellfish Pokémon', 'Hydro Pump', '40+', 'Electric', 'None', '3', 2, 1, 2, 3),
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'None', '1', 44, 1, 3, 1),
(80, 'Ivysaur', 'Seed Pokémon', 'Razor Leaf', '30', 'Fire', 'None', '2', 2, 1, 3, 2),
(100, 'Venusaur', 'Seed Pokémon', 'Solar Beam', '60', 'Fire', 'None', '3', 15, 1, 3, 3),
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'None', '1', 27, 2, 4, 1),
(90, 'Raichu', 'Mouse Pokémon', 'Thunder', '60', 'Fighting', 'None', '2', 14, 1, 4, 2),
(70, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'None', '1', 10, 2, 3, 1),
(80, 'Gengar', 'Shadow Pokémon', 'Nightmare', '30', 'Psychic', 'None', '1', 5, 3, 5, 3),
(50, 'Gastly', 'Gas Pokémon', 'Lick', '10', 'Psychic', 'None', '1', 33, 3, 5, 1),
(60, 'Haunter', 'Gas Pokémon', 'Hypnosis', '20', 'Psychic', 'None', '1', 29, 3, 5, 2),
(90, 'Machamp', 'Superpower Pokémon', 'Seismic Toss', '60', 'Psychic', 'None', '3', 8, 1, 6, 3),
(50, 'Machop', 'Superpower Pokémon', 'Low Kick', '20', 'Psychic', 'None', '1', 52, 1, 6, 1),
(80, 'Machoke', 'Superpower Pokémon', 'Karate Chop', '50', 'Psychic', 'None', '2', 34, 1, 6, 2),
(70, 'Electabuzz', 'Electric Pokémon', 'Thunder Shock', '30', 'Fighting', 'None', '2', 20, 1, 4, 1),
(90, 'Zapdos', 'Electric Pokémon', 'Thunderstorm', '60', 'Fighting', 'None', '3', 16, 1, 4, 3),
(60, 'Magmar', 'Spitfire Pokémon', 'Smokescreen', '20', 'Water', 'None', '2', 36, 1, 1, 1),
(100, 'Moltres', 'Flame Pokémon', 'Fire Blast', '70', 'Water', 'None', '3', 12, 3, 1, 3),
(50, 'Cubone', 'Lonely Pokémon', 'Bone Attack', '20', 'Grass', 'None', '1', 50, 3, 6, 1),
(80, 'Hitmonchan', 'Punching Pokémon', 'Special Punch', '40', 'Psychic', 'None', '2', 7, 1, 6, 1);
