
SELECT 'Computer_Science' as subarea, sub.Computer_Science as total, sub.Computer_Science_all as geral
FROM sigcas_ethnicity.total_subarea_new sub
UNION ALL
SELECT 'Data_Engineering' as subarea, sub.Data_Engineering as total, sub.Data_Engineering_all as geral
FROM sigcas_ethnicity.total_subarea_new sub
UNION ALL
SELECT 'Software_Engineering' as subarea, sub.Software_Engineering as total, sub.Software_Engineering_all as geral
FROM sigcas_ethnicity.total_subarea_new sub
UNION ALL
SELECT 'Theory' as subarea, sub.Theory as total, sub.Theory_all as geral
FROM sigcas_ethnicity.total_subarea_new sub;


