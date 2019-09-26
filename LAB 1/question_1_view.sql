create VIEW question_1 as SELECT distinct pap.title as titulo, 
conf.year as ano, 
conf.cs AS Computer_Science,
conf.de AS Data_Engineering,
conf.se AS Software_Engineering,
conf.th AS Theory
FROM sigcas_ethnicity.papers pap
INNER JOIN sigcas_ethnicity.conferences conf
WHERE pap.conf_key = conf.conf_key