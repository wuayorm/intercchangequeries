/* Version : 1.0 
/* Date : 06-04-2019 
   Created By : Eduardo Rocha
   Modified By : Eduardo Rocha */

/* StudentSectionAttendanceEvent */
/* Student Attendance U */

SELECT DISTINCT [rsccc_SR_ATT_POST].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_DEMO].[CAMPUS_ID], [rsccc_SR_STU_CAMPUS].[STU_ID], [rsccc_SR_STU_DEMO].[unique_stu_id], 
[rsccc_SR_ATT_POST].[ABS_DATE], [rsccc_SR_ATT_POST].[ABS_TYPE], [rsccc_ST_ATT_POST].[POSTING_DECODE], [rsccc_SR_ATT_POST].[CRS_NBR], [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID], 
[rsccc_SR_ATT_POST_INSTR_CLASS].[SEC_NBR], [rsccc_SR_ATT_POST_INSTR_CLASS].[INSTR_ID], 
CASE WHEN LEFT([rsccc_SR_ATT_POST].[ABS_DATE], 4) = '2018' THEN 'Fall Semester' 
     WHEN LEFT([rsccc_SR_ATT_POST].[ABS_DATE], 4) = '2019' THEN 'Spring Semester' 
END AS Semester 
FROM [rsccc_CR_DEMO] LEFT JOIN [rsccc_SR_STU_CAMPUS] ON [rsccc_CR_DEMO].[CAMPUS_ID] = [rsccc_SR_STU_CAMPUS].[CAMPUS_ID] 
LEFT JOIN [rsccc_SR_STU_DEMO] ON [rsccc_SR_STU_CAMPUS].[STU_ID] = [rsccc_SR_STU_DEMO].[STU_ID] LEFT JOIN [rsccc_SR_STU_ENROLL] ON [rsccc_SR_STU_ENROLL].[STU_ID] =  [rsccc_SR_STU_DEMO].[STU_ID] 
LEFT JOIN [rsccc_SR_ATT_POST] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_ATT_POST].[STU_ID] 
LEFT JOIN [rsccc_ST_ATT_POST] ON [rsccc_ST_ATT_POST].[POST_CD] = [rsccc_SR_ATT_POST].[ABS_TYPE] LEFT JOIN [rsccc_SR_ATT_POST_INSTR_CLASS] ON ([rsccc_SR_ATT_POST].[ABS_DATE] = [rsccc_SR_ATT_POST_INSTR_CLASS].[ATT_DT] 
AND [rsccc_SR_ATT_POST].[ABS_PER] = [rsccc_SR_ATT_POST_INSTR_CLASS].[PER] AND [rsccc_SR_ATT_POST].[CRS_NBR] = [rsccc_SR_ATT_POST_INSTR_CLASS].[CRS_NO] 
AND [rsccc_SR_ATT_POST].[USER_ID] = [rsccc_SR_ATT_POST_INSTR_CLASS].[USR_ID]) LEFT JOIN [rsccc_DR_CRS_OFFERED_CYR] ON [rsccc_SR_ATT_POST_INSTR_CLASS].[CRS_NO] = [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_SR_ATT_POST_INSTR_CLASS].[INSTR_ID] = [rsccc_CR_MET_CYR].[INSTR_ID] 
WHERE [rsccc_CR_DEMO].[CAMPUS_ID] = '001' AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_SR_ATT_POST].[CRS_NBR] <> '0001' AND [rsccc_SR_ATT_POST].[CRS_NBR] <> '0301' 
AND [rsccc_SR_ATT_POST].[CRS_NBR] <> '0402' AND [rsccc_SR_ATT_POST].[CRS_NBR] <> '0502' AND [rsccc_SR_ATT_POST].[CRS_NBR] <> '1505' AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12') 
AND [rsccc_SR_ATT_POST].[POST_FLAG] = 'G' AND [rsccc_SR_ATT_POST].[ABS_TYPE] = 'U'  
ORDER BY [rsccc_SR_STU_CAMPUS].[STU_ID] ; 

