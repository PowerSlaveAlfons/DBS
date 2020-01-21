/******************************************************************/
/** Table/view: Champions */
/** Developer: XXXXXXXXXXXXXXXX */
/** Description: Contains all information about champions */
/******************************************************************/

CREATE OR REPLACE VIEW champions
AS
SELECT
  name,
  health,
  movement,
  health_regen,
  attack_dmg,
  armor,
  attack_speed,
  magic_resist,
  r.label
FROM champion
  JOIN champion_role cr
    ON champion.pk_id = cr.fk_champion_id
  JOIN role r
    ON cr.fk_role_id = r.pk_id;

/******************************************************************/
/** Table/view: Champion Wins */
/** Developer: XXXXXXXXXXXXXXXX */
/** Description: shows how many games a champion has won */
/******************************************************************/

CREATE OR REPLACE VIEW champion_wins
AS
SELECT
  count(ch.name) victorys,
  ch.name
FROM player_statistic
  JOIN champion ch
    ON player_statistic.fk_champion_id = ch.pk_id
  JOIN player pl
    ON player_statistic.fk_player_id = pl.pk_id
  JOIN team t
    ON (
      player_statistic.pk_id = t.fk_player_statistic_id_1
      OR player_statistic.pk_id = t.fk_player_statistic_id_2
      OR player_statistic.pk_id = t.fk_player_statistic_id_3
      OR player_statistic.pk_id = t.fk_player_statistic_id_4
      OR player_statistic.pk_id = t.fk_player_statistic_id_5
    )
  JOIN match m
    ON t.pk_id = m.fk_team_id_winner
GROUP BY ch.name
ORDER BY victorys DESC;

/******************************************************************/
/** Table/view: Rank Distribution */
/** Developer: XXXXXXXXXXXXXXXX */
/** Description: Shows Rank distribution in the leagues */
/******************************************************************/

CREATE OR REPLACE VIEW rank_distribution
AS
SELECT
  label,
  ((count(name) * 100) / (
    SELECT count(*)
    FROM player
  )) test
FROM league l
  LEFT OUTER JOIN player
    ON fk_league_id = l.pk_id
GROUP BY label
ORDER BY test DESC;

/******************************************************************/
/** Table/view: Monsterslayer */
/** Developer: XXXXXXXXXXXXXXXX */
/** Description: Shows who's slain the most monsters */
/******************************************************************/

CREATE OR REPLACE VIEW monsterslayer
AS
SELECT
  pl.name,
  sum(amount) monsters
FROM player_statistic ps
  JOIN player_statistic_monster psm
    ON ps.pk_id = psm.fk_player_statistic_id
  JOIN player pl
    ON ps.fk_player_id = pl.pk_id
  RIGHT OUTER JOIN monster m
    ON psm.fk_monster_id = m.pk_id
GROUP BY pl.name
ORDER BY monsters DESC;


/******************************************************************/
/** Table/view: KDA */
/** Developer: XXXXXXXXXXXXXXXX */
/** Description: Kill-Death-Assists-Ratio */
/******************************************************************/
CREATE OR REPLACE VIEW kda
AS
SELECT
  name,
  NVL(((sum(kills) + sum(assist)) / NULLIF(sum(death),0)), 0) kda,
  l.label
FROM player_statistic
  JOIN player p
    ON player_statistic.fk_player_id = p.pk_id
  JOIN league l
    ON p.fk_league_id = l.pk_id
GROUP BY
  name,
  l.label
ORDER BY kda DESC;
