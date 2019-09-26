SELECT 
et.name as nome, 
et.l1 as etnia, 
(CASE WHEN et.gender = '-' THEN 'N/A' ELSE et.gender END) AS genero,
conf.year AS ano,
pap.paper_key,
conf.cs AS Computer_Science,
conf.de AS Data_Engineering,
conf.se AS Software_Engineering,
conf.th AS Theory
FROM sigcas_ethnicity.ethnicity et
INNER JOIN sigcas_ethnicity.authors aut
INNER JOIN sigcas_ethnicity.papers pap
INNER JOIN sigcas_ethnicity.conferences conf
WHERE et.name = aut.name
AND aut.paper_key = pap.paper_key
AND pap.conf_key = conf.conf_key
