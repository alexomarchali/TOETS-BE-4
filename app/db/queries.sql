SELECT 
    EX.* 
   ,EP.*
   ,EN.* 
FROM           Examen AS EX
INNER JOIN     ExamenPerExaminator AS EP
ON             EX.Examen = EP.Id
INNER JOIN     Examinator AS EN
ON             EP.ExamenPerExaminator = EN.Id
WHERE   InstructeurId = 1;