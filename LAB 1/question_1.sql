SELECT 
(SUM(conf.cs) / (SELECT 
	SUM(conf.cs)
	FROM sigcas_ethnicity.papers as pap
	INNER JOIN sigcas_ethnicity.conferences as conf
	WHERE conf.conf_key = pap.conf_key)*100) AS Computer_Science, 
(SUM(conf.de) / (SELECT 	
	SUM(conf.de) 
	FROM sigcas_ethnicity.papers as pap
	INNER JOIN sigcas_ethnicity.conferences as conf
	WHERE conf.conf_key = pap.conf_key)*100) AS Data_Engineering, 
(SUM(conf.se) / (SELECT 
	SUM(conf.se) 
	FROM sigcas_ethnicity.papers as pap
	INNER JOIN sigcas_ethnicity.conferences as conf
	WHERE conf.conf_key = pap.conf_key)*100) AS Software_Engineering, 
(SUM(conf.th) / (SELECT 
	SUM(conf.th) 
	FROM sigcas_ethnicity.papers as pap
	INNER JOIN sigcas_ethnicity.conferences as conf
	WHERE conf.conf_key = pap.conf_key)*100) AS Theory
FROM sigcas_ethnicity.papers as pap
INNER JOIN sigcas_ethnicity.conferences as conf
WHERE conf.conf_key = pap.conf_key
AND (pap.title like '%pattern recognition%' 
	OR pap.title like '%patterns recognition%' 
	OR pap.title like '%anomaly%'
    OR pap.title like '%behavior suspicious%'
    OR pap.title like '%activity human%'
    OR pap.title like '%activities humans%'
    OR pap.title like '%action human%'
    OR pap.title like '%actions humans%'
    OR pap.title like '%behavior human%'
    OR pap.title like '%behaviors humans%'
    OR pap.title like '%surveillance%')
