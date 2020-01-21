/******************************************************************/
/** Table: Champions */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains the attributes of every champion */
/******************************************************************/
CREATE TABLE champion(
  pk_id number NOT NULL,
  name varchar2(255) NOT NULL,
  health float NOT NULL,
  movement number NOT NULL,
  health_regen float NOT NULL,
  attack_dmg float NOT NULL,
  armor float NOT NULL,
  attack_speed float NOT NULL,
  magic_resist float NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE champion IS 'Contains the attributes of every champion';

/******************************************************************/
/** Table: Role */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains all types of roles that several champions can take (N:N Relation!) */
/******************************************************************/


CREATE TABLE role(
  pk_id number NOT NULL,
  label varchar2(255) NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE role IS 'Contains all roles that several champions can take (N:N Relation!)';

/******************************************************************/
/** Table: League */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains all types of leagues that a player can be in */
/******************************************************************/

CREATE TABLE league(
  pk_id number NOT NULL,
  label varchar2(255) NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE league IS 'Contains all types of leagues that a player can be in';

/******************************************************************/
/** Table: Monster */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains all types of monsters that a player can slay (N:N Relation!) */
/******************************************************************/


CREATE TABLE monster(
  pk_id number NOT NULL,
  name varchar2(255) NOT NULL,
  health number NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE monster IS 'Contains all types of monsters that a player can slay (N:N Relation!)';

/******************************************************************/
/** Table: Player */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains information about a player and its account */
/******************************************************************/


CREATE TABLE player(
  pk_id number NOT NULL,
  fk_league_id number NOT NULL,
  name varchar2(255) NOT NULL,
  date_created date NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE player IS 'Contains information about a player and its account';

/******************************************************************/
/** Table: Player Statistic */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains the final statistics of one player of a specific game */
/******************************************************************/


CREATE TABLE player_statistic(
  pk_id number NOT NULL,
  fk_player_id number NOT NULL,
  fk_champion_id number NOT NULL,
  kills number NOT NULL,
  assist number NOT NULL,
  death number NOT NULL,
  creep_score number NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE player_statistic IS 'Contains the final statistics of one player of a specific game';

/******************************************************************/
/** Table: Team */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains five player statistics ids that form one unique team for one unique match */
/******************************************************************/

CREATE TABLE team(
  pk_id number NULL,
  fk_player_statistic_id_1 number NOT NULL,
  fk_player_statistic_id_2 number NOT NULL,
  fk_player_statistic_id_3 number NOT NULL,
  fk_player_statistic_id_4 number NOT NULL,
  fk_player_statistic_id_5 number NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE team IS 'Contains five player statistics ids that form one unique team for one unique match';


/******************************************************************/
/** Table: Match */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Contains all information about one unique match */
/******************************************************************/
CREATE TABLE match(
  pk_id number NOT NULL,
  fk_team_id_red number NOT NULL,
  fk_team_id_blue number NOT NULL,
  fk_team_id_winner number NOT NULL,
  actualdate date NOT NULL,
  PRIMARY KEY (pk_id)
);
COMMENT ON TABLE match IS 'Contains all information about one unique match';

/******************************************************************/
/** Table: Champion <-> Role */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Connects champions and their roles */
/******************************************************************/
CREATE TABLE champion_role(
  fk_champion_id number NOT NULL,
  fk_role_id number NOT NULL
);
COMMENT ON TABLE champion_role IS 'Connects champions and their roles';

/******************************************************************/
/** Table: Player Statistic <-> Monster */
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Connects player statistics to the monsters that the player has slain */
/******************************************************************/


CREATE TABLE player_statistic_monster(
  fk_player_statistic_id number NOT NULL,
  fk_monster_id number NOT NULL,
  amount number NOT NULL
);
COMMENT ON TABLE player_statistic_monster IS 'Connects player statistics to the monsters that the player has slain';
