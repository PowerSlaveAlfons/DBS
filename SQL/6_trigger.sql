/*********************************************************************/
/** Trigger: rank_distribution **/
/** Type: Before row **/
/** Type Extension: update **/
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: Sets the KDA to default 0 if nothing is inserted **/
/*********************************************************************/

CREATE OR REPLACE TRIGGER default_statistic
BEFORE INSERT ON player_statistic
FOR EACH ROW
BEGIN
		if :new.kills is null then
			:new.kills := 0;
		end if;

		if :new.assist is null then
			:new.assist := 0;
		end if;

		if :new.death is null then
			:new.death := 0;
		end if;
END;
/

/*********************************************************************/
/** Trigger: init_player **/
/** Type: Before row **/
/** Type Extension: insert **/
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: initially ranks news players as unranked and sets date created to sysdate **/
/*********************************************************************/

CREATE OR REPLACE TRIGGER init_player
BEFORE INSERT ON player
FOR EACH ROW
BEGIN
	select 1 into :new.fk_league_id from dual;
	select (SELECT TO_CHAR
    (SYSDATE, 'DD/MM/YYYY')
     FROM DUAL) into :new.date_created from dual;
end;
/

/*********************************************************************/
/** Trigger: rank_progress **/
/** Type: Before row **/
/** Type Extension: update **/
/** Developer: Stefan Alfons, Constantin Akamphuber, Io Gschwentner, Philip Ewert*/
/** Description: makes sure that a player must climb one rank by one **/
/*********************************************************************/

CREATE OR REPLACE TRIGGER league_climb_cap
BEFORE UPDATE OF fk_league_id ON player
FOR EACH ROW
BEGIN
	IF (:new.fk_league_id - :old.fk_league_id) > 1 THEN
		:new.fk_league_id := :old.fk_league_id;
		dbms_output.put_line('A player cannot climb 2 leagues at once!');
	END IF;
END;
/
