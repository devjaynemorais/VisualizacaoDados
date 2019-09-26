SELECT qt1.ano, 
'Computer Science' as subarea,
SUM(qt1.Computer_Science) AS quantidade_subarea,
(SELECT SUM(qtx.Computer_Science) 
	FROM sigcas_ethnicity.question_1 qtx
    WHERE ((qtx.titulo LIKE '%pattern recognition%')
            OR (qtx.titulo LIKE '%patterns recognition%')
            OR (qtx.titulo LIKE '%anomaly%')
            OR (qtx.titulo LIKE '%behavior suspicious%')
            OR (qtx.titulo LIKE '%activity human%')
            OR (qtx.titulo LIKE '%activities humans%')
            OR (qtx.titulo LIKE '%action human%')
            OR (qtx.titulo LIKE '%actions humans%')
            OR (qtx.titulo LIKE '%behavior human%')
            OR (qtx.titulo LIKE '%behaviors humans%')
            OR (qtx.titulo LIKE '%surveillance%'))
    AND qtx.ano = qt1.ano) as qt_with_key_word
FROM sigcas_ethnicity.question_1 qt1
GROUP BY qt1.ano


UNION ALL

SELECT qt1.ano, 
'Data Engineering' as subarea,
SUM(qt1.Data_Engineering) AS quantidade_subarea,
(SELECT SUM(qtx.Data_Engineering) 
	FROM sigcas_ethnicity.question_1 qtx
    WHERE ((qtx.titulo LIKE '%pattern recognition%')
            OR (qtx.titulo LIKE '%patterns recognition%')
            OR (qtx.titulo LIKE '%anomaly%')
            OR (qtx.titulo LIKE '%behavior suspicious%')
            OR (qtx.titulo LIKE '%activity human%')
            OR (qtx.titulo LIKE '%activities humans%')
            OR (qtx.titulo LIKE '%action human%')
            OR (qtx.titulo LIKE '%actions humans%')
            OR (qtx.titulo LIKE '%behavior human%')
            OR (qtx.titulo LIKE '%behaviors humans%')
            OR (qtx.titulo LIKE '%surveillance%'))
    AND qtx.ano = qt1.ano) as qt_with_key_word
FROM sigcas_ethnicity.question_1 qt1
GROUP BY qt1.ano

UNION ALL

SELECT qt1.ano, 
'Software Engineering' as subarea,
SUM(qt1.Software_Engineering) AS quantidade_subarea,
(SELECT SUM(qtx.Software_Engineering) 
	FROM sigcas_ethnicity.question_1 qtx
    WHERE ((qtx.titulo LIKE '%pattern recognition%')
            OR (qtx.titulo LIKE '%patterns recognition%')
            OR (qtx.titulo LIKE '%anomaly%')
            OR (qtx.titulo LIKE '%behavior suspicious%')
            OR (qtx.titulo LIKE '%activity human%')
            OR (qtx.titulo LIKE '%activities humans%')
            OR (qtx.titulo LIKE '%action human%')
            OR (qtx.titulo LIKE '%actions humans%')
            OR (qtx.titulo LIKE '%behavior human%')
            OR (qtx.titulo LIKE '%behaviors humans%')
            OR (qtx.titulo LIKE '%surveillance%'))
    AND qtx.ano = qt1.ano) as qt_with_key_word
FROM sigcas_ethnicity.question_1 qt1
GROUP BY qt1.ano


UNION ALL

SELECT qt1.ano, 
'Theory' as subarea,
SUM(qt1.Theory) AS quantidade_subarea,
(SELECT SUM(qtx.Theory) 
	FROM sigcas_ethnicity.question_1 qtx
    WHERE ((qtx.titulo LIKE '%pattern recognition%')
            OR (qtx.titulo LIKE '%patterns recognition%')
            OR (qtx.titulo LIKE '%anomaly%')
            OR (qtx.titulo LIKE '%behavior suspicious%')
            OR (qtx.titulo LIKE '%activity human%')
            OR (qtx.titulo LIKE '%activities humans%')
            OR (qtx.titulo LIKE '%action human%')
            OR (qtx.titulo LIKE '%actions humans%')
            OR (qtx.titulo LIKE '%behavior human%')
            OR (qtx.titulo LIKE '%behaviors humans%')
            OR (qtx.titulo LIKE '%surveillance%'))
    AND qtx.ano = qt1.ano) as qt_with_key_word
FROM sigcas_ethnicity.question_1 qt1
GROUP BY qt1.ano;


-- SELECT  sum(Computer_Science), sum(Data_Engineering), sum(Software_Engineering), sum(Theory)
-- FROM question_1
-- WHERE ano = 2000
-- AND titulo like '%Human%'