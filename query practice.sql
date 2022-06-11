create table cricket_1 (
player_id int,
player_name varchar(20),
runs int,
popularity int
);
insert into cricket_1 values (1,'Virat', 45, 2);
insert into cricket_1 values (2,'Dhawan', 30, 8);
insert into cricket_1 values (3,'KL', 37, 5);
insert into cricket_1 values (4,'Rohit', 50, 1);
insert into cricket_1 values (5,'Kulkarni', 28, 9);
insert into cricket_1 values (6,'Pandya', 32, 4);
insert into cricket_1 values (7,'Karthik', 30, 7);
insert into cricket_1 values (8,'Shami', 15, 6);
insert into cricket_1 values (9,'Jadeja', 25, 3);
insert into cricket_1 values (10,'Shradul', 12, 10);
select * from cricket_1;
create table cricket_2 (
player_id int,
player_name varchar(20),
runs int,
charisma int
);
insert into cricket_2 values (1, 'Tendulkar', 70, 80);
insert into cricket_2 values (2, 'Virat', 50, 60);
insert into cricket_2 values (3, 'Sehwag', 65, 70);
insert into cricket_2 values (4, 'Rohit', 65, 58);
insert into cricket_2 values (5,'Jadeja', 40, 55);
insert into cricket_2 values (6, 'Yuvraaj', 65, 65);
insert into cricket_2 values (7, 'Dhoni', 60, 70);
insert into cricket_2 values (8, 'Dravid', 75, 85);
insert into cricket_2 values (9, 'Ganguly', 65, 68);
insert into cricket_2 values (10, 'Karthik', 50, 50);
select * from cricket_2;

/* QUERIES */
/* Query 1: Select all the players who were there in these matches */
select * from cricket_1 
UNION 
select * from cricket_2;

/* Query 2: Players in the match 1 having a higher popularity than the avg mark */
select player_name, popularity from cricket_1 where popularity>(Select avg(popularity) from cricket_1);

/* Query 3: Runs of players common in both the matches*/
select e.runs,d.player_name 
from cricket_1 e
inner join cricket_2 d
on e.player_name=d.player_name;

/* Query 4: Players in the match 1 having a higher score than the avg mark*/
select player_id,player_name,runs from cricket_1 where runs>(select avg(runs) from cricket_1);

/* Query 5: Players in the match 1 having a higher score than 40*/
select player_id, player_name, runs from cricket_1 where runs>40;

/* Query 6: Players' names starting with and ending with t */
select * from cricket_1 where player_name like 'V%T';

/* Query 7: Players' names not ending with t */
select * from cricket_1 where player_name NOT LIKE '%T';

/* Query 8: First name of every player in match 2 */
select player_name, substr(player_name,1) from cricket_2;

/* Query 9: Players with charisma value more than 55 */
select * from cricket_2 where charisma > 55;