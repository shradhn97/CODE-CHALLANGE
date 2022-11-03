Create database cc;
use cc;
create table t_agent(
					agent_id VARCHAR(25) NOT NULL,
					agent_name VARCHAR(100),
					agent_email VARCHAR(50),
					agent_city varchar(100) ,
					agent_phone DECIMAL(15,0) ,
					target_policy_sum decimal(15,0),
					primary key(agent_id)
                    );

CREATE TABLE t_policy(
			 policy_id VARCHAR(25) NOT NULL PRIMARY KEY,
             policy_name VARCHAR(100) NOT NULL,
             agent_id varchar(25),
             policy_type varchar(100),
             policy_sum DECIMAL(10,0),
             policy_status VARCHAR(100),
             policy_tenure DECIMAL(5,0)
             );
             
CREATE TABLE t_member(
			member_id VARCHAR(25) PRIMARY KEY,
            member_name VARCHAR(100),
            member_email VARCHAR(100),
            member_city VARCHAR(100),
            member_phone DECIMAL(10,0),
            agent_id VARCHAR(100),
            policy_id VARCHAR(100),
            foreign key (agent_id) REFERENCES t_agent(agent_id),
            foreign key (policy_id) REFERENCES t_policy(policy_id)
            );
            update t_agent set TARGET_POLICY_SUM =400000 
			where (agent_city ='PUNE' and  agent_id like 'M%');
		select * from t_agent;
update t_agent set TARGET_POLICY_SUM =250000
                where (agent_city ='CHENNAI' AND agent_id like'M%');
                SELECT * FROM t_agent;
