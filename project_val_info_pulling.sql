SELECT * FROM project_val_unrated
SELECT * FROM project_val_comp

CREATE TABLE unrated_info as 
	(SELECT episode,act,game_type,map,agent,agent_type,rounds,ending,placement,kda FROM project_val_unrated ORDER by ids ASC)
SELECT * FROM unrated_info

SELECT agent_type, COUNT(*) as occrrences
FROM unrated_info
group by agent_type

SELECT agent_type,map, COUNT(*) as occrrences
FROM unrated_info
group by agent_type,map 
Order By agent_type

SELECT placement,map,agent_type, COUNT(*) as Count
FROM unrated_info
group by placement,map,agent_type
ORDER BY placement 

CREATE TABLE comp_info as 
	(SELECT episode,act,game_type,map,agent,agent_type,rounds,ending,placement,kda FROM project_val_comp ORDER by ids ASC)
SELECT * FROM comp_info

SELECT agent_type, COUNT(*) as occrrences
FROM comp_info
group by agent_type

SELECT agent_type,map, COUNT(*) as occrrences
FROM comp_info
group by agent_type,map 
Order By agent_type

SELECT placement,map,agent_type, COUNT(*) as Count
FROM comp_info
group by placement,map,agent_type
ORDER BY placement 
