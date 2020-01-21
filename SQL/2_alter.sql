/*************/
/* CHAMPIONS */
/*************/


CREATE UNIQUE INDEX "champion_index" ON champion (pk_id, name);
CREATE SEQUENCE champ_seq START WITH 1;


/*************/
/* ROLE */
/*************/


CREATE UNIQUE INDEX "role_index" ON role (label);
CREATE SEQUENCE role_seq START WITH 1;

/*************/
/* LEAGUE */
/*************/


CREATE UNIQUE INDEX "league_index" ON league (label);
CREATE SEQUENCE league_seq START WITH 1;

/*************/
/* MONSTER */
/*************/


CREATE UNIQUE INDEX "monster_index" ON monster (name);
CREATE SEQUENCE monster_seq START WITH 1;

/*************/
/* PLAYER */
/*************/


CREATE UNIQUE INDEX "player_index" ON player (name);

ALTER TABLE player ADD CONSTRAINT player_league
	FOREIGN KEY (fk_league_id) REFERENCES league
	ON DELETE CASCADE
;
CREATE SEQUENCE player_seq START WITH 1;

/*************/
/* PLAYER_STATISTIC */
/*************/


ALTER TABLE player_statistic ADD CONSTRAINT player_statistic_champion
	FOREIGN KEY (fk_champion_id) REFERENCES champion
	ON DELETE CASCADE
;

ALTER TABLE player_statistic ADD CONSTRAINT player_statistic_player
	FOREIGN KEY (fk_player_id) REFERENCES player
	ON DELETE CASCADE
;
CREATE SEQUENCE player_statistic_seq START WITH 1;

/*************/
/* TEAM */
/*************/


ALTER TABLE team ADD CONSTRAINT team_player_statistic
	FOREIGN KEY (fk_player_statistic_id_1)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE team ADD CONSTRAINT team_player_statistic2
	FOREIGN KEY (fk_player_statistic_id_2)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE team ADD CONSTRAINT team_player_statistic3
	FOREIGN KEY (fk_player_statistic_id_3)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE team ADD CONSTRAINT team_player_statistic4
	FOREIGN KEY (fk_player_statistic_id_4)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE team ADD CONSTRAINT team_player_statistic5
	FOREIGN KEY (fk_player_statistic_id_5)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;
CREATE SEQUENCE team_seq START WITH 1;

/*************/
/* MATCH */
/*************/


ALTER TABLE match ADD CONSTRAINT match_team
	FOREIGN KEY (fk_team_id_red)
	REFERENCES team (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE match ADD CONSTRAINT match_team2
	FOREIGN KEY (fk_team_id_blue)
	REFERENCES team (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE match ADD CONSTRAINT match_team3
	FOREIGN KEY (fk_team_id_winner)
	REFERENCES team (pk_id)
	ON DELETE CASCADE
;
CREATE SEQUENCE match_seq START WITH 1;

/*************/
/* CHAMPION_ROLE */
/*************/

ALTER TABLE champion_role ADD CONSTRAINT champion_role_champion
	FOREIGN KEY (fk_champion_id)
	REFERENCES champion (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE champion_role ADD CONSTRAINT champion_role_role
	FOREIGN KEY (fk_role_id)
	REFERENCES role (pk_id)
	ON DELETE CASCADE
;

/*************/
/* PLAYER_STATISTIC_MONSTER */
/*************/

ALTER TABLE player_statistic_monster ADD CONSTRAINT player_statistic_monster2
	FOREIGN KEY (fk_monster_id)
	REFERENCES monster (pk_id)
	ON DELETE CASCADE
;

ALTER TABLE player_statistic_monster ADD CONSTRAINT player_statistic_monster
	FOREIGN KEY (fk_player_statistic_id)
	REFERENCES player_statistic (pk_id)
	ON DELETE CASCADE
;

/********/
/* TYPE_ARRAY */
/*******/

CREATE TYPE t_array
    IS TABLE OF VARCHAR2(200);