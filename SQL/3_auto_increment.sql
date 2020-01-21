/*************/
/* CHAMPIONS */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_champion
  BEFORE INSERT ON champion              
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select champ_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* ROLE */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_role
  BEFORE INSERT ON role              
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select role_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* LEAGUE */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_league
  BEFORE INSERT ON league              
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select league_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* MONSTER */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_monster
  BEFORE INSERT ON monster              
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select monster_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* PLAYER */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_player
  BEFORE INSERT ON player           
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select player_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* PLAYER_STATISTIC */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_player_statistic
  BEFORE INSERT ON player_statistic
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select player_statistic_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* TEAM */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_team
  BEFORE INSERT ON team
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select team_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/
/*************/
/* MATCH */
/*************/

CREATE OR REPLACE TRIGGER  tr_br_i_match
  BEFORE INSERT ON match
  FOR EACH ROW  
BEGIN  
  IF :NEW.PK_ID is null then 
    select match_seq.NEXTVAL into :NEW.pk_id from dual; 
  end if; 
end; 
/