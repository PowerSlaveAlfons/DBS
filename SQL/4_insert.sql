/*************/
/* CHAMPIONS */
/*************/

INSERT INTO champion
  (
  name,
  health,
  movement,
  health_regen,
  attack_dmg,
  armor,
  attack_speed,
  magic_resist
  )
  (
  SELECT
    'Aatrox',
    580,
    345,
    3,
    60,
    38,
    0.651,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Ahri',
    526,
    330,
    6.5,
    53.04,
    20.88,
    0.668,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Akali',
    575,
    345,
    8,
    62.4,
    23,
    0.625,
    37
  FROM dual
)
UNION ALL
  (
  SELECT
    'Alistar',
    573.36,
    330,
    8.5,
    61.1116,
    44,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Amumu',
    613.12,
    335,
    9,
    53.38,
    33,
    0.736,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Anivia',
    480,
    325,
    5.5,
    51.376,
    21.22,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Annie',
    524,
    335,
    5.5,
    50.41,
    19.22,
    0.579,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Aphelios',
    530,
    330,
    3.25,
    57,
    28,
    0.64,
    26
  FROM dual
)
UNION ALL
  (
  SELECT
    'Ashe',
    539,
    325,
    3.5,
    61,
    26,
    0.658,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Aurelion Sol',
    575,
    325,
    7,
    57,
    19,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Azir',
    552,
    335,
    7,
    52,
    19.04,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Bard',
    575,
    330,
    5.5,
    52,
    34,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Blitzcrank',
    582.6,
    325,
    8.5,
    61.54,
    40,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Brand',
    519.68,
    340,
    5.5,
    57.04,
    21.88,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Braum',
    540,
    335,
    8.5,
    55.376,
    47,
    0.644,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Caitlyn',
    481,
    325,
    3.5,
    62,
    28,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Camille',
    575.6,
    340,
    8.5,
    68,
    35,
    0.644,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Cassiopeia',
    575,
    328,
    5.5,
    53,
    20,
    0.647,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'ChoGath',
    574.4,
    345,
    9,
    69,
    38,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Corki',
    518,
    325,
    5.5,
    55,
    28,
    0.638,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Darius',
    582.84,
    340,
    10,
    64,
    39,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Diana',
    594,
    345,
    7.5,
    57.04,
    31,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Dr.Mundo',
    582.52,
    345,
    8,
    61.27,
    36,
    0.721,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Draven',
    574,
    330,
    3.75,
    60,
    29,
    0.679,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Ekko',
    585,
    340,
    9,
    58,
    32,
    0.688,
    32
  FROM dual
)
UNION ALL
  (
  SELECT
    'Elise',
    534,
    330,
    5.5,
    55,
    27,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Evelynn',
    572,
    335,
    8.5,
    61,
    37,
    0.667,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Ezreal',
    500,
    325,
    4,
    60,
    22,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Fiddlesticks',
    524.4,
    335,
    5.5,
    48.36,
    30,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Fiora',
    550,
    345,
    8.5,
    68,
    33,
    0.69,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Fizz',
    570,
    335,
    8,
    58.04,
    22.412,
    0.658,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Galio',
    562,
    335,
    8,
    59,
    24,
    0.625,
    32
  FROM dual
)
UNION ALL
  (
  SELECT
    'Gangplank',
    540,
    345,
    6,
    64,
    35,
    0.658,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Garen',
    620,
    340,
    8,
    66,
    36,
    0.625,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Gnar',
    510,
    325,
    4.5,
    59,
    32,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Gragas',
    600,
    330,
    5.5,
    64,
    35,
    0.675,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Graves',
    555,
    340,
    8,
    68,
    33,
    0.475,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Hecarim',
    580,
    345,
    7,
    66,
    36,
    0.67,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Heimerdinger',
    488,
    340,
    7,
    55.536,
    19.04,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Illaoi',
    585.6,
    340,
    9.5,
    68,
    35,
    0.571,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Irelia',
    580,
    335,
    8.5,
    63,
    36,
    0.656,
    32
  FROM dual
)
UNION ALL
  (
  SELECT
    'Ivern',
    585,
    330,
    7,
    50,
    27,
    0.644,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Janna',
    500,
    315,
    5.5,
    46,
    28,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Jarvan IV',
    570,
    340,
    8,
    64,
    34,
    0.658,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Jax ',
    592.8,
    350,
    8.5,
    68,
    36,
    0.638,
    32.1
  FROM dual
)
UNION ALL
  (
  SELECT
    'Jayce',
    560,
    335,
    6,
    54,
    27,
    658,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Jhin',
    556,
    330,
    3.75,
    59,
    24,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Jinx',
    581,
    325,
    3.75,
    57,
    28,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'KaiSa',
    571,
    335,
    3.5,
    59,
    28,
    0.644,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Kalista',
    534,
    325,
    3.75,
    69,
    23,
    0.694,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Karma',
    534,
    335,
    5.5,
    53.544,
    26,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Karthus',
    528,
    335,
    6.5,
    45.66,
    20.88,
    0.625,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    'Kassadin',
    576,
    340,
    6,
    58.852,
    19,
    0.64,
    30
  FROM dual
);

/*************/
/* ROLE */
/*************/

INSERT INTO role (label)
(
  SELECT 'Catcher'
  FROM dual
)
UNION ALL (
  SELECT 'Enchanter'
  FROM dual
)
UNION ALL (
  SELECT 'Juggernaut'
  FROM dual
)
UNION ALL (
  SELECT 'Diver'
  FROM dual
)
UNION ALL (
  SELECT 'Burst'
  FROM dual
)
UNION ALL (
  SELECT 'Battlemage'
  FROM dual
)
UNION ALL (
  SELECT 'Artillery'
  FROM dual
)
UNION ALL (
  SELECT 'Marksman'
  FROM dual
)
UNION ALL (
  SELECT 'Assassin'
  FROM dual
)
UNION ALL (
  SELECT 'Skirmisher'
  FROM dual
)
UNION ALL (
  SELECT 'Vanguard'
  FROM dual
)
UNION ALL (
  SELECT 'Warden'
  FROM dual
)
UNION ALL (
  SELECT 'Specialist'
  FROM dual
);

/*************/
/* CHAMPION_ROLES */
/*************/
INSERT INTO champion_role
  (
  fk_champion_id,
  fk_role_id
  )
  (
  SELECT
    1,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    5
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    9
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    11
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    11
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    6
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    5
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    10,
    6
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    12,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    14,
    5
  FROM dual
)
UNION ALL
  (
  SELECT
    15,
    12
  FROM dual
)
UNION ALL
  (
  SELECT
    16,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    17,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    18,
    6
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    20,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    21,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    22,
    9
  FROM dual
)
UNION ALL
  (
  SELECT
    23,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    24,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    25,
    9
  FROM dual
)
UNION ALL
  (
  SELECT
    26,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    27,
    9
  FROM dual
)
UNION ALL
  (
  SELECT
    28,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    29,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    30,
    10
  FROM dual
)
UNION ALL
  (
  SELECT
    31,
    9
  FROM dual
)
UNION ALL
  (
  SELECT
    32,
    12
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    34,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    35,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    36,
    11
  FROM dual
)
UNION ALL
  (
  SELECT
    37,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    38,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    39,
    13
  FROM dual
)
UNION ALL
  (
  SELECT
    40,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    41,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    42,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    43,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    44,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    45,
    10
  FROM dual
)
UNION ALL
  (
  SELECT
    46,
    7
  FROM dual
)
UNION ALL
  (
  SELECT
    47,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    48,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    49,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    50,
    8
  FROM dual
)
UNION ALL
  (
  SELECT
    51,
    5
  FROM dual
)
UNION ALL
  (
  SELECT
    51,
    6
  FROM dual
)
UNION ALL
  (
  SELECT
    51,
    9
  FROM dual
);

/*************/
/* LEAGUE */
/*************/

INSERT INTO league
  (label)
  (
  SELECT 'Unranked'
  FROM dual
)
UNION ALL
  (
  SELECT 'Iron'
  FROM dual
)
UNION ALL
  (
  SELECT 'Bronze'
  FROM dual
)
UNION ALL
  (
  SELECT 'Silver'
  FROM dual
)
UNION ALL
  (
  SELECT 'Gold'
  FROM dual
)
UNION ALL
  (
  SELECT 'Platinum'
  FROM dual
)
UNION ALL
  (
  SELECT 'Diamond'
  FROM dual
)
UNION ALL
  (
  SELECT 'Master'
  FROM dual
)
UNION ALL
  (
  SELECT 'Grandmaster'
  FROM dual
)
UNION ALL
  (
  SELECT 'Challenger'
  FROM dual
);

/*************/
/* MONSTER */
/*************/

INSERT INTO monster
  (
  name,
  health
  )
  (
  SELECT
    'Baron Nashor',
    9000
  FROM dual
)
UNION ALL
  (
  SELECT
    'Rift Herald',
    8250
  FROM dual
)
UNION ALL
  (
  SELECT
    'Elder Drake',
    6400
  FROM dual
)
UNION ALL
  (
  SELECT
    'Drake',
    4090
  FROM dual
);


/*************/
/* PLAYER */
/*************/

INSERT INTO player
  (
  fk_league_id,
  name,
  date_created
  )
  (
  SELECT
    1,
    'HolyElysium',
    to_date(
      '15/02/2014',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    10,
    'BitchesK1ll4',
    to_date(
      '15/02/2014',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'GosuLimit',
    to_date(
      '14/01/2016',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'AwakenedRazor',
    to_date(
      '11/07/2016',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    'ImbaDevil',
    to_date(
      '21/10/2016',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'P4nicEffect',
    to_date(
      '26/10/2016',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    'zeroLon3Blood',
    to_date(
      '03/05/2017',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    'Negat1v3Mercy12',
    to_date(
      '10/05/2017',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'BiolcyEx0dus',
    to_date(
      '14/12/2017',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    '1337BloodAura',
    to_date(
      '14/02/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'WarpvenomB0ss69',
    to_date(
      '27/02/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    'AwakenedEmpire',
    to_date(
      '28/02/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'RadicalVisionaryy',
    to_date(
      '08/03/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    'Psychicarchon',
    to_date(
      '23/03/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    'zzeroPl4net',
    to_date(
      '06/04/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    'g0suuRaider',
    to_date(
      '10/07/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'consumptiveL1m1t',
    to_date(
      '07/08/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'ultimateChief1337',
    to_date(
      '10/08/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'EnemyPsychosis',
    to_date(
      '06/09/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    'decimatedBl00d',
    to_date(
      '08/11/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    'VictimMachine',
    to_date(
      '15/11/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    'H0lyCh1m3r4',
    to_date(
      '05/12/2018',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'xXBlad3StrategyXx',
    to_date(
      '29/01/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'BaneFulRa1d3er',
    to_date(
      '08/02/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    'RageInf3rn0',
    to_date(
      '07/03/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'IncognuioHivemind',
    to_date(
      '28/03/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    'NeoUrbanSt4rr',
    to_date(
      '07/05/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'CarnagRadical',
    to_date(
      '18/06/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    'AlteredEve',
    to_date(
      '11/07/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'GrimStroke',
    to_date(
      '13/08/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    'OccultPwner',
    to_date(
      '09/09/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    'DeathMonolith',
    to_date(
      '18/10/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    'necroP4nic',
    to_date(
      '31/10/2019',
      'DD/MM/YYYY'
    )
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    'AlphaOblivion',
    to_date(
      '12/12/2019',
      'DD/MM/YYYY'
    )
  FROM dual
);

/*************/
/* PLAYER_STATISTIC */
/*************/
INSERT INTO player_statistic
  (
  fk_player_id,
  fk_champion_id,
  kills,
  assist,
  death,
  creep_score
  )
  (
  SELECT
    20,
    48,
    8,
    28,
    12,
    75
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    16,
    1,
    15,
    16,
    20
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    35,
    6,
    28,
    16,
    183
  FROM dual
)
UNION ALL
  (
  SELECT
    17,
    41,
    13,
    7,
    2,
    26
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    51,
    7,
    2,
    12,
    194
  FROM dual
)
UNION ALL
  (
  SELECT
    18,
    10,
    15,
    10,
    16,
    221
  FROM dual
)
UNION ALL
  (
  SELECT
    21,
    51,
    9,
    10,
    0,
    33
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    9,
    9,
    10,
    11,
    215
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    48,
    4,
    18,
    10,
    157
  FROM dual
)
UNION ALL
  (
  SELECT
    15,
    52,
    8,
    15,
    3,
    180
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    5,
    14,
    2,
    7,
    113
  FROM dual
)
UNION ALL
  (
  SELECT
    28,
    27,
    0,
    11,
    0,
    77
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    46,
    1,
    6,
    2,
    81
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    33,
    13,
    30,
    18,
    36
  FROM dual
)
UNION ALL
  (
  SELECT
    25,
    40,
    13,
    25,
    7,
    11
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    19,
    3,
    15,
    14,
    174
  FROM dual
)
UNION ALL
  (
  SELECT
    20,
    23,
    5,
    4,
    15,
    147
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    39,
    11,
    13,
    7,
    154
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    15,
    9,
    0,
    6,
    19
  FROM dual
)
UNION ALL
  (
  SELECT
    10,
    39,
    4,
    17,
    10,
    140
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    29,
    6,
    4,
    8,
    39
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    4,
    15,
    1,
    7,
    29
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    37,
    13,
    13,
    14,
    105
  FROM dual
)
UNION ALL
  (
  SELECT
    18,
    16,
    9,
    21,
    10,
    173
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    23,
    12,
    5,
    10,
    165
  FROM dual
)
UNION ALL
  (
  SELECT
    31,
    6,
    10,
    0,
    2,
    189
  FROM dual
)
UNION ALL
  (
  SELECT
    12,
    25,
    15,
    15,
    0,
    46
  FROM dual
)
UNION ALL
  (
  SELECT
    12,
    42,
    7,
    23,
    4,
    202
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    41,
    14,
    22,
    4,
    126
  FROM dual
)
UNION ALL
  (
  SELECT
    17,
    29,
    0,
    22,
    12,
    137
  FROM dual
)
UNION ALL
  (
  SELECT
    10,
    48,
    10,
    30,
    15,
    27
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    25,
    14,
    11,
    20,
    111
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    7,
    14,
    27,
    17,
    200
  FROM dual
)
UNION ALL
  (
  SELECT
    22,
    32,
    5,
    26,
    1,
    20
  FROM dual
)
UNION ALL
  (
  SELECT
    27,
    7,
    12,
    21,
    1,
    168
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    41,
    12,
    10,
    0,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    51,
    1,
    30,
    8,
    47
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    5,
    8,
    13,
    3,
    141
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    30,
    10,
    19,
    20,
    190
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    26,
    11,
    27,
    17,
    102
  FROM dual
)
UNION ALL
  (
  SELECT
    28,
    16,
    2,
    3,
    19,
    33
  FROM dual
)
UNION ALL
  (
  SELECT
    32,
    38,
    1,
    14,
    2,
    191
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    26,
    7,
    14,
    18,
    118
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    13,
    7,
    20,
    19,
    93
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    49,
    12,
    3,
    16,
    37
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    12,
    15,
    3,
    16,
    197
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    27,
    5,
    24,
    19,
    198
  FROM dual
)
UNION ALL
  (
  SELECT
    32,
    45,
    5,
    16,
    3,
    50
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    52,
    1,
    5,
    13,
    57
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    20,
    11,
    7,
    7,
    219
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    33,
    10,
    22,
    7,
    128
  FROM dual
)
UNION ALL
  (
  SELECT
    22,
    5,
    1,
    13,
    9,
    142
  FROM dual
)
UNION ALL
  (
  SELECT
    34,
    38,
    5,
    5,
    7,
    170
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    28,
    0,
    15,
    18,
    116
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    40,
    14,
    4,
    4,
    78
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    47,
    5,
    20,
    6,
    213
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    24,
    13,
    2,
    20,
    102
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    39,
    6,
    25,
    7,
    119
  FROM dual
)
UNION ALL
  (
  SELECT
    31,
    23,
    6,
    17,
    9,
    73
  FROM dual
)
UNION ALL
  (
  SELECT
    1,
    38,
    12,
    18,
    5,
    57
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    44,
    4,
    18,
    6,
    72
  FROM dual
)
UNION ALL
  (
  SELECT
    16,
    17,
    13,
    21,
    20,
    139
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    45,
    1,
    17,
    5,
    134
  FROM dual
)
UNION ALL
  (
  SELECT
    17,
    49,
    11,
    19,
    0,
    165
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    53,
    6,
    14,
    20,
    81
  FROM dual
)
UNION ALL
  (
  SELECT
    8,
    21,
    4,
    28,
    7,
    62
  FROM dual
)
UNION ALL
  (
  SELECT
    20,
    30,
    11,
    3,
    7,
    122
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    44,
    10,
    5,
    14,
    92
  FROM dual
)
UNION ALL
  (
  SELECT
    24,
    43,
    5,
    13,
    19,
    184
  FROM dual
)
UNION ALL
  (
  SELECT
    15,
    42,
    13,
    17,
    18,
    68
  FROM dual
)
UNION ALL
  (
  SELECT
    18,
    28,
    10,
    2,
    12,
    99
  FROM dual
)
UNION ALL
  (
  SELECT
    12,
    45,
    8,
    26,
    10,
    109
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    17,
    10,
    11,
    1,
    110
  FROM dual
)
UNION ALL
  (
  SELECT
    32,
    11,
    1,
    21,
    1,
    6
  FROM dual
)
UNION ALL
  (
  SELECT
    23,
    1,
    2,
    6,
    4,
    217
  FROM dual
)
UNION ALL
  (
  SELECT
    24,
    20,
    3,
    21,
    16,
    36
  FROM dual
)
UNION ALL
  (
  SELECT
    24,
    22,
    13,
    15,
    8,
    25
  FROM dual
)
UNION ALL
  (
  SELECT
    23,
    4,
    6,
    10,
    10,
    117
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    26,
    14,
    18,
    9,
    181
  FROM dual
)
UNION ALL
  (
  SELECT
    16,
    20,
    12,
    7,
    20,
    28
  FROM dual
)
UNION ALL
  (
  SELECT
    16,
    13,
    2,
    22,
    5,
    162
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    49,
    13,
    27,
    0,
    65
  FROM dual
)
UNION ALL
  (
  SELECT
    4,
    38,
    2,
    1,
    20,
    52
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    51,
    13,
    30,
    11,
    222
  FROM dual
)
UNION ALL
  (
  SELECT
    2,
    51,
    1,
    17,
    8,
    98
  FROM dual
)
UNION ALL
  (
  SELECT
    22,
    47,
    4,
    24,
    20,
    163
  FROM dual
)
UNION ALL
  (
  SELECT
    10,
    43,
    9,
    11,
    12,
    106
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    19,
    8,
    4,
    1,
    43
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    53,
    8,
    8,
    18,
    198
  FROM dual
)
UNION ALL
  (
  SELECT
    28,
    23,
    1,
    13,
    2,
    151
  FROM dual
)
UNION ALL
  (
  SELECT
    15,
    26,
    4,
    11,
    19,
    107
  FROM dual
)
UNION ALL
  (
  SELECT
    33,
    31,
    4,
    5,
    12,
    178
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    50,
    12,
    16,
    4,
    138
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    12,
    4,
    17,
    10,
    146
  FROM dual
)
UNION ALL
  (
  SELECT
    16,
    28,
    3,
    2,
    7,
    197
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    8,
    5,
    24,
    9,
    92
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    8,
    5,
    7,
    17,
    220
  FROM dual
)
UNION ALL
  (
  SELECT
    26,
    21,
    14,
    11,
    11,
    213
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    5,
    15,
    24,
    5,
    207
  FROM dual
)
UNION ALL
  (
  SELECT
    14,
    33,
    2,
    9,
    2,
    109
  FROM dual
);

/*************/
/* PLAYER_STATISTIC_MONSTER */
/*************/

INSERT INTO player_statistic_monster
  (
  fk_player_statistic_id,
  fk_monster_id,
  amount
  )
  (
  SELECT
    52,
    1,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    21,
    1,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    27,
    3,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    74,
    1,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    55,
    1,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    12,
    1,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    85,
    1,
    3
  FROM dual
)
UNION ALL
  (
  SELECT
    42,
    3,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    81,
    3,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    1,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    97,
    2,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    4,
    4
  FROM dual
)
UNION ALL
  (
  SELECT
    59,
    3,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    70,
    2,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    18,
    1,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    34,
    1,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    14,
    3,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    71,
    1,
    1
  FROM dual
)
UNION ALL
  (
  SELECT
    41,
    2,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    84,
    1,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    84,
    4,
    2
  FROM dual
)
UNION ALL
  (
  SELECT
    41,
    3,
    1
  FROM dual
);

/*************/
/* TEAM */
/*************/

INSERT INTO team
  (
  fk_player_statistic_id_1,
  fk_player_statistic_id_2,
  fk_player_statistic_id_3,
  fk_player_statistic_id_4,
  fk_player_statistic_id_5
  )
  (
  SELECT
    1,
    2,
    3,
    4,
    5
  FROM dual
)
UNION ALL
  (
  SELECT
    6,
    7,
    8,
    9,
    10
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    12,
    21,
    14,
    15
  FROM dual
)
UNION ALL
  (
  SELECT
    22,
    17,
    18,
    19,
    20
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    16,
    99,
    24,
    31
  FROM dual
)
UNION ALL
  (
  SELECT
    26,
    27,
    32,
    33,
    30
  FROM dual
)
UNION ALL
  (
  SELECT
    25,
    28,
    34,
    35,
    36
  FROM dual
)
UNION ALL
  (
  SELECT
    37,
    38,
    39,
    40,
    41
  FROM dual
)
UNION ALL
  (
  SELECT
    29,
    42,
    43,
    44,
    45
  FROM dual
)
UNION ALL
  (
  SELECT
    46,
    47,
    100,
    49,
    52
  FROM dual
)
UNION ALL
  (
  SELECT
    48,
    50,
    23,
    53,
    54
  FROM dual
)
UNION ALL
  (
  SELECT
    60,
    56,
    57,
    58,
    59
  FROM dual
)
UNION ALL
  (
  SELECT
    51,
    55,
    61,
    62,
    63
  FROM dual
)
UNION ALL
  (
  SELECT
    64,
    98,
    66,
    67,
    68
  FROM dual
)
UNION ALL
  (
  SELECT
    65,
    69,
    70,
    71,
    72
  FROM dual
)
UNION ALL
  (
  SELECT
    73,
    74,
    75,
    79,
    80
  FROM dual
)
UNION ALL
  (
  SELECT
    76,
    78,
    81,
    82,
    83
  FROM dual
)
UNION ALL
  (
  SELECT
    85,
    86,
    87,
    88,
    89
  FROM dual
)
UNION ALL
  (
  SELECT
    77,
    84,
    90,
    91,
    92
  FROM dual
)
UNION ALL
  (
  SELECT
    93,
    94,
    95,
    96,
    97
  FROM dual
);

/*************/
/* MATCH */
/*************/

INSERT INTO match
  (
  fk_team_id_red,
  fk_team_id_blue,
  fk_team_id_winner,
  actualdate
  )
  (
  SELECT
    1,
    2,
    1,
    TO_DATE('2020-01-01', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    3,
    4,
    4,
    TO_DATE('2020-01-01', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    5,
    6,
    6,
    TO_DATE('2020-01-02', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    7,
    8,
    8,
    TO_DATE('2020-01-03', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    9,
    10,
    9,
    TO_DATE('2020-01-04', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    11,
    12,
    11,
    TO_DATE('2020-01-04', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    13,
    14,
    14,
    TO_DATE('2020-01-05', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    15,
    16,
    15,
    TO_DATE('2020-01-04', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    17,
    18,
    17,
    TO_DATE('2020-01-05', 'yyyy-mm-dd')
  FROM dual
)
UNION ALL
  (
  SELECT
    19,
    20,
    20,
    TO_DATE('2020-01-05', 'yyyy-mm-dd')
  FROM dual
);
