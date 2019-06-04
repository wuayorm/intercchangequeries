/* Version : 1.0 
/* Date : 06-04-2019 
   Created By : Eduardo Rocha
   Modified By : Eduardo Rocha */

/* StudentSchoolAssociation */

SELECT DISTINCT [rsccc_SR_STU_ENROLL].[STU_ID], [rsccc_SR_STU_DEMO].[GRAD_PLAN_CD], [rsccc_SR_STU_DEMO].[unique_stu_id], [rsccc_CR_DEMO].[DIST_ID], 
[rsccc_SR_STU_ENROLL].[DT_ENTRY], [rsccc_CR_DEMO].[CAMPUS_ID], [rsccc_SR_STU_ENROLL].[GRD_LVL] 
FROM [rsccc_SR_STU_ENROLL] 
LEFT JOIN [rsccc_SR_STU_DEMO] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_STU_ENROLL].[STU_ID] LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_SR_STU_ENROLL].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_SR_STU_ENROLL].[ACTIVE_CD] = '1' AND [rsccc_CR_DEMO].[CAMPUS_ID] = '001' AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12')
ORDER BY [rsccc_SR_STU_ENROLL].[STU_ID]; 


/* StudentSectionAssociation */

SELECT DISTINCT [rsccc_SR_CRS_GRD].[STU_ID], [rsccc_SR_CRS_GRD].[CRS_NBR], [rsccc_SR_CRS_GRD].[SEC_NBR], [rsccc_SR_CRS_GRD].[CRS_SEM_ENROLL],  
[rsccc_CR_DEMO].[DIST_ID], [rsccc_SR_CRS_GRD].[CAMPUS_ID], [rsccc_SR_STU_DEMO].[unique_stu_id],  
CASE WHEN [rsccc_SR_CRS_GRD].[CRS_SEM_ENROLL] = '1' THEN 'Fall Semester' 
     WHEN [rsccc_SR_CRS_GRD].[CRS_SEM_ENROLL] = '2' THEN 'Spring Semester' 
END AS Semester, [rsccc_SR_CRS_GRD].[DT_ENTRY], [rsccc_SR_CRS_GRD].[SCH_YR], [rsccc_CR_MET_CYR].[SEQ_NBR] , [rsccc_CR_MET_CYR].[INSTR_ID] 
FROM [rsccc_SR_CRS_GRD] LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_SR_CRS_GRD].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] LEFT JOIN [rsccc_SR_STU_DEMO] ON [rsccc_SR_CRS_GRD].[STU_ID] = [rsccc_SR_STU_DEMO].[STU_ID] 
LEFT JOIN [rsccc_SR_STU_ENROLL] ON [rsccc_SR_CRS_GRD].[STU_ID] = [rsccc_SR_STU_ENROLL].[STU_ID] 
LEFT JOIN [rsccc_CR_MET_CYR] ON ([rsccc_SR_CRS_GRD].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] AND [rsccc_SR_CRS_GRD].[SEC_NBR] = [rsccc_CR_MET_CYR].[SEC_NBR]) 
WHERE [rsccc_SR_CRS_GRD].[DT_WD] = '' AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '1505' AND [rsccc_CR_MET_CYR].[INSTR_ID] <> '061' 
AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12')  
ORDER BY [rsccc_SR_CRS_GRD].[STU_ID] ; 


/* StudentEducationOrganizationAssociation */

SELECT DISTINCT [rsccc_SR_STU_ENROLL].[STU_ID], [rsccc_SR_STU_DEMO].[unique_stu_id], [rsccc_SR_STU_DEMO].[SEX], [rsccc_CR_DEMO].[DIST_ID], 
[rsccc_SR_STU_ENROLL].[DT_ENTRY], [rsccc_CR_DEMO].[CAMPUS_ID] 
FROM [rsccc_SR_STU_ENROLL] 
LEFT JOIN [rsccc_SR_STU_DEMO] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_STU_ENROLL].[STU_ID] LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_SR_STU_ENROLL].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_SR_STU_ENROLL].[ACTIVE_CD] = '1' AND [rsccc_CR_DEMO].[CAMPUS_ID] = '001' AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12')
ORDER BY [rsccc_SR_STU_ENROLL].[STU_ID] ; 


