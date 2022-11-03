update t_agent set TARGET_POLICY_SUM =400000 
			where (agent_city ='PUNE' and  agent_id like 'M%');
		select * from t_agent;
update t_agent set TARGET_POLICY_SUM =250000
                where (agent_city ='CHENNAI' AND agent_id like'M%');
                SELECT * FROM t_agent;