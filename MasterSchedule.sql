/* CourseOffering */

/* Course 1 */
SELECT DISTINCT [rsccc_CR_MET_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], [rsccc_CR_MET_CYR].[SCH_YR], [rsccc_CR_MET_CYR].[CAMPUS_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem, 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE] ,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) = '2018' THEN 'Fall Semester' 
     WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) = '2019' THEN 'Spring Semester'
END AS Semester
FROM [rsccc_CR_MET_CYR] 
LEFT JOIN [rsccc_DR_CRS_OFFERED_CYR] ON [rsccc_CR_MET_CYR].[CRS_NBR] = [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR]
WHERE [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501'
      AND [rsccc_CR_MET_CYR].[SEM_CD] <> '3' ORDER BY [rsccc_CR_MET_CYR].[CRS_NBR]  ;


/* Course 2 */
SELECT DISTINCT [rsccc_CR_MET_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], [rsccc_CR_MET_CYR].[SCH_YR], [rsccc_CR_MET_CYR].[CAMPUS_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem, 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE] ,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) = '2018' THEN 'Fall Semester' 
END AS Semester
FROM [rsccc_CR_MET_CYR] 
LEFT JOIN [rsccc_DR_CRS_OFFERED_CYR] ON [rsccc_CR_MET_CYR].[CRS_NBR] = [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR]
WHERE [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501'
      AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019'  ORDER BY [rsccc_CR_MET_CYR].[CRS_NBR] ; 


/* Course 3 */
SELECT DISTINCT [rsccc_CR_MET_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], [rsccc_CR_MET_CYR].[SCH_YR], [rsccc_CR_MET_CYR].[CAMPUS_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem, 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE] ,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) = '2019' THEN 'Spring Semester'
END AS Semester
FROM [rsccc_CR_MET_CYR] 
LEFT JOIN [rsccc_DR_CRS_OFFERED_CYR] ON [rsccc_CR_MET_CYR].[CRS_NBR] = [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR]
WHERE [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501'
      AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2018' ORDER BY [rsccc_CR_MET_CYR].[CRS_NBR] ; 


/* Course 4 */
/* Year Classes Spring Semester Pass 1 */
SELECT DISTINCT [rsccc_CR_MET_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], [rsccc_CR_MET_CYR].[SCH_YR], [rsccc_CR_MET_CYR].[CAMPUS_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem, 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE] ,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) = '2018' THEN 'Spring Semester' 
END AS Semester
FROM [rsccc_CR_MET_CYR] 
LEFT JOIN [rsccc_DR_CRS_OFFERED_CYR] ON [rsccc_CR_MET_CYR].[CRS_NBR] = [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR]
WHERE [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' 
AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019' AND [rsccc_CR_MET_CYR].[INSTR_ID] <> '061' 
ORDER BY [rsccc_CR_MET_CYR].[CRS_NBR] ; 


/* Sections */

/* Semester Classes - Section 1 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE], 
CASE WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] = '' THEN '503' 
     WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] <> '' THEN [rsccc_CR_INSTR_CYR].[HOMEROOM] 
END AS Classroom , 
[rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[INSTR_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Fall Semester' 
     WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2019' THEN 'Spring Semester' 
END AS Semestre , 
CASE WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '00' THEN '0.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '05' THEN '0.5' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '10' THEN '1.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '20' THEN '2.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '30' THEN '3.0' 
END AS CreditValue , [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_DESCR] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] <> '3' AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 


/* Year Classes Fall Semester - Section 2 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE], 
CASE WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] = '' THEN '503' 
     WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] <> '' THEN [rsccc_CR_INSTR_CYR].[HOMEROOM] 
END AS Classroom ,
[rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[INSTR_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Fall Semester' 
END AS Semestre , 
CASE WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '00' THEN '0.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '05' THEN '0.5' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '10' THEN '1.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '20' THEN '2.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '30' THEN '3.0' 
END AS CreditValue , [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_DESCR] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ;


/* Year Classes Spring Semester Pass 1 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE], 
CASE WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] = '' THEN '503' 
     WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] <> '' THEN [rsccc_CR_INSTR_CYR].[HOMEROOM] 
END AS Classroom ,
[rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[INSTR_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Spring Semester' 
END AS Semestre , 
CASE WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '00' THEN '0.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '05' THEN '0.5' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '10' THEN '1.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '20' THEN '2.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '30' THEN '3.0' 
END AS CreditValue , [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_DESCR] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 


/* Year Classes Spring Semester Pass 2 - Section 4 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], 
[rsccc_DR_CRS_OFFERED_CYR].[TITLE], 
CASE WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] = '' THEN '503' 
     WHEN [rsccc_CR_INSTR_CYR].[HOMEROOM] <> '' THEN [rsccc_CR_INSTR_CYR].[HOMEROOM] 
END AS Classroom ,
[rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[INSTR_ID], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2019' THEN 'Spring Semester' 
END AS Semestre , 
CASE WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '00' THEN '0.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '05' THEN '0.5' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '10' THEN '1.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '20' THEN '2.0' 
     WHEN [rsccc_DR_CRS_OFFERED_CYR].[NBR_CREDITS] = '30' THEN '3.0' 
END AS CreditValue , [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_DESCR] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2018' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ;


