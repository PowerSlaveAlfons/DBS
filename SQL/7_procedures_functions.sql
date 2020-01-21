--set serveroutput on;
--/

/******************************************************************
/** Function: showKdaOf */
/** In: l_n_placement_io - place of the player you want to find out the kda */
/** Returns: Name and KDA of the player on the inputed place */
/** Developer: XXXXXXXXXXXXXX */
/** Description: Function uses kda view to return player and kda from input placement */
/*********************************************************************/

create or replace function f_showKdaOf_v(l_n_placement_io number)
return varchar2
is
	l_v_playerInInputRow_ou varchar2(60);
	l_n_KdaOfPlayer_ou number;
	
	l_n_exceptionHelper number;
	l_x_placementDoesntExist exception;
BEGIN
	SELECT count(*) INTO l_n_exceptionHelper from KDA;
	
	if l_n_exceptionHelper < l_n_placement_io then
		raise l_x_placementDoesntExist;
	END IF;
	
	
	SELECT name into l_v_playerInInputRow_ou
		FROM ( SELECT a.NAME, rownum rnum
						from (KDA) a
					where rownum <= l_n_placement_io)
		where rnum >= l_n_placement_io;
	
	SELECT round(kda,2) into l_n_KdaOfPlayer_ou
		FROM ( SELECT a.kda, rownum rnum
						from (KDA) a
					where rownum <= l_n_placement_io)
		where rnum >= l_n_placement_io;

	return 'Player with ' || l_n_placement_io || ' best KDA is ' || l_v_playerInInputRow_ou || ' with a ' || l_n_KdaOfPlayer_ou || ' KDA!';
			
	EXCEPTION
		when l_x_placementDoesntExist then
			return 'Platzierung ' || l_n_placement_io || ' existiert nicht!';
			raise;
END;
/

/******************************************************************
/** procedure: showChampwithRole */
/** Out: l_r_name_cv ? name of the champion with searched role*/
/** Out: l_r_label_cv - name of the role you want to search*/
/** In: l_v_rolename_in - Role of every champion you want to view */
/** Developer: XXXXXXXXXXXXXX */
/** Description: Function searches in the View Champions for matching labels */
/*********************************************************************/

create or replace procedure sp_showChampwithRole_v(l_v_rolename_in varchar2)
is
	Cursor l_champions_cur is
		SELECT NAME, label from champions
		where LOWER(label) like LOWER(l_v_rolename_in)
		order by name;
		
		l_r_name_cv varchar(32);
		l_r_label_cv varchar(32);
		
		l_x_roledoesntexist exception;
		l_n_exceptionHelper number;
BEGIN
	OPEN l_champions_cur;
	
	SELECT count(*) INTO l_n_exceptionHelper from	champions
	where LOWER(label) like LOWER(l_v_rolename_in);
	
	if l_n_exceptionHelper = 0 then
		raise l_x_roledoesntexist;
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('Champion-Name	|	Role');
	DBMS_OUTPUT.PUT_LINE('=====================');
	
	LOOP
		FETCH l_champions_cur into l_r_name_cv, l_r_label_cv;
			EXIT when l_champions_cur%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(l_r_name_cv||' | '||l_r_label_cv);
	END LOOP;
	CLOSE l_champions_cur;
			
	EXCEPTION
	when l_x_roledoesntexist then
			DBMS_OUTPUT.PUT_LINE( 'Die Rolle ' || l_v_rolename_in || ' existiert nicht!');
			raise;
		
END;
/

/******************************************************************
/** Function: showMonsterKills */
/** In: l_n_placement_io - place of the player you want to find out the slain monster */
/** Returns: Name and KDA of the player on the inputed place */
/** Developer: XXXXXXXXXXXXXX */
/** Description: Function uses MONSTERSLAYER view to return player and slain monsters from input placement */
/*********************************************************************/

create or replace function f_showMonsterKills_v(l_n_placement_io number)
return varchar2
is
	l_v_playerInInputRow_ou varchar2(60);
	l_n_slainMonstersOfPlayer_ou number;
	
	l_n_exceptionHelper number;
	l_x_placementDoesntExist exception;
BEGIN
	SELECT count(*) INTO l_n_exceptionHelper from MONSTERSLAYER;
	
	if l_n_exceptionHelper < l_n_placement_io then
		raise l_x_placementDoesntExist;
	END IF;
	
	
	SELECT name into l_v_playerInInputRow_ou
		FROM ( SELECT a.NAME, rownum rnum
						from (MONSTERSLAYER) a
					where rownum <= l_n_placement_io)
		where rnum >= l_n_placement_io;
	
	SELECT MONSTERS into l_n_slainMonstersOfPlayer_ou
		FROM ( SELECT a.MONSTERS, rownum rnum
						from (MONSTERSLAYER) a
					where rownum <= l_n_placement_io)
		where rnum >= l_n_placement_io;

	return 'Player with ' || l_n_placement_io || ' most slain Monsters is ' || l_v_playerInInputRow_ou || ' with ' || l_n_slainMonstersOfPlayer_ou || ' slainMonsters';
			
	EXCEPTION
		when l_x_placementDoesntExist then
			return 'Platzierung ' || l_n_placement_io || ' existiert nicht!';
			raise;
END;
/

/******************************************************************
/** Function: f_showRankDistribution_v */
/** In: l_v_divisionname_in - Divison you want to know the distribution of */
/** Returns: Distribution of all players in given divison*/
/** Developer: XXXXXXXXXXXXXX */
/** Description: Uses View RANK_DISTRIBUTION to display distribution of all players in given divison */
/*********************************************************************/

create or replace function f_showRankDistribution_v(l_v_divisionname_io varchar2)
return varchar2
is
		l_n_distribution_ou number;		

		l_x_divisondoesntexist exception;
		l_n_exceptionHelp number;
BEGIN
	
	SELECT count(*) INTO l_n_exceptionHelp from	RANK_DISTRIBUTION
	where LOWER(label) like LOWER(l_v_divisionname_io);
	
	if l_n_exceptionHelp = 0 then
		raise l_x_divisondoesntexist;
	END IF;
	
	SELECT ROUND(TEST,2) into l_n_distribution_ou from RANK_DISTRIBUTION
	where LOWER(label) like LOWER(l_v_divisionname_io);
	
	return 'Roughly '  || l_n_distribution_ou || '% of all players are in the ' || l_v_divisionname_io || ' Divison!';
		
	EXCEPTION
	when l_x_divisondoesntexist then
			return 'Die Divison ' || l_v_divisionname_io || ' existiert nicht!';
			raise;
		
END;
/
