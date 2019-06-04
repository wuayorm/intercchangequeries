/* Sessions */

SELECT DISTINCT [DT_F_DAY_SCH], [SCH_YR], [CAMPUS_ID], [DT_L_DAY_SCH], 
CASE WHEN LEFT([DT_FIRST_CYC1], 4) = '2018' THEN 'Fall Semester' 
END AS Session_Name, (CAST([TOT_DAYS_IN_ATT_CYC1] AS INT) + CAST([TOT_DAYS_IN_ATT_CYC2] AS INT) + CAST([TOT_DAYS_IN_ATT_CYC3] AS INT)) AS TotalDays,
[DT_FIRST_CYC1], [DT_FIRST_CYC2], [DT_FIRST_CYC3], [TOT_DAYS_IN_ATT_CYC1], [TOT_DAYS_IN_ATT_CYC2], [TOT_DAYS_IN_ATT_CYC3] 
FROM [rsccc_CR_ATT_OPT] 
WHERE [rsccc_CR_ATT_OPT].[SCH_YR] = '2019' AND [rsccc_CR_ATT_OPT].[CAMPUS_ID] = '001'  AND [rsccc_CR_ATT_OPT].[TRACK] = (SELECT MAX([rsccc_CR_ATT_OPT].[TRACK]) FROM [rsccc_CR_ATT_OPT]); 


SELECT DISTINCT [DT_F_DAY_SCH], [SCH_YR], [CAMPUS_ID], [DT_L_DAY_SCH],  
CASE WHEN LEFT([DT_FIRST_CYC4], 4) = '2019' THEN 'Spring Semester' 
END AS Session_Name,  (CAST([TOT_DAYS_IN_ATT_CYC4] AS INT) + CAST([TOT_DAYS_IN_ATT_CYC5] AS INT) + CAST([TOT_DAYS_IN_ATT_CYC6] AS INT)) AS TotalDays, 
[DT_FIRST_CYC4], [DT_FIRST_CYC5], [DT_FIRST_CYC6], [TOT_DAYS_IN_ATT_CYC4], [TOT_DAYS_IN_ATT_CYC5], [TOT_DAYS_IN_ATT_CYC6] 
FROM [rsccc_CR_ATT_OPT] 
WHERE [rsccc_CR_ATT_OPT].[SCH_YR] = '2019' AND [rsccc_CR_ATT_OPT].[CAMPUS_ID] = '001'  AND [rsccc_CR_ATT_OPT].[TRACK] = (SELECT MAX([rsccc_CR_ATT_OPT].[TRACK]) FROM [rsccc_CR_ATT_OPT]); 


/* GradingPeriod */

SELECT DISTINCT [DT_F_DAY_SCH], [SCH_YR], [CAMPUS_ID], [DT_L_DAY_SCH], [DT_FIRST_CYC1], [DT_FIRST_CYC2], [DT_FIRST_CYC3], [DT_FIRST_CYC4], [DT_FIRST_CYC5], [DT_FIRST_CYC6], 
[TOT_DAYS_IN_ATT_CYC1], [TOT_DAYS_IN_ATT_CYC2], [TOT_DAYS_IN_ATT_CYC3], [TOT_DAYS_IN_ATT_CYC4], [TOT_DAYS_IN_ATT_CYC5], [TOT_DAYS_IN_ATT_CYC6] 
FROM [rsccc_CR_ATT_OPT] 
WHERE [rsccc_CR_ATT_OPT].[SCH_YR] = '2019' AND [rsccc_CR_ATT_OPT].[CAMPUS_ID] = '001'  AND [rsccc_CR_ATT_OPT].[TRACK] = (SELECT MAX([rsccc_CR_ATT_OPT].[TRACK]) FROM [rsccc_CR_ATT_OPT]); 

