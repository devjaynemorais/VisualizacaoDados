select tab.ano, tab.etnia, tab.genero,'Computer Science' as subarea,
SUM(tab.Computer_Science) AS quantidade_subarea,  
COUNT(tab.paper_key) as total_paper
from question_4 tab
    GROUP BY tab.ano, tab.etnia, tab.genero
    
UNION ALL

select tab.ano, tab.etnia, tab.genero,'Data Engineering' as subarea,
SUM(tab.Data_Engineering) AS quantidade_subarea,  
COUNT(tab.paper_key) as total_paper
from question_4 tab
    GROUP BY tab.ano, tab.etnia, tab.genero
    
UNION ALL

select tab.ano, tab.etnia, tab.genero,'Software Engineering' as subarea,
SUM(tab.Software_Engineering) AS quantidade_subarea,  
COUNT(tab.paper_key) as total_paper
from question_4 tab
    GROUP BY tab.ano, tab.etnia, tab.genero


UNION ALL

select tab.ano, tab.etnia, tab.genero,'Theory' as subarea,
SUM(tab.Theory) AS quantidade_subarea,  
COUNT(tab.paper_key) as total_paper
from question_4 tab
    GROUP BY tab.ano, tab.etnia, tab.genero
    