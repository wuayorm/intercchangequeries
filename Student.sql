/* Student */

SELECT DISTINCT [rsccc_SR_STU_DEMO].[unique_stu_id], [rsccc_SR_STU_ENROLL].[NAME_F], [rsccc_SR_STU_ENROLL].[NAME_L], [rsccc_SR_STU_DEMO].[DOB] FROM [rsccc_SR_STU_DEMO] 
LEFT JOIN [rsccc_SR_STU_ENROLL] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_STU_ENROLL].[STU_ID] 
WHERE [rsccc_SR_STU_ENROLL].[STU_ID] <> '2' AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12') 
ORDER BY [rsccc_SR_STU_DEMO].[unique_stu_id]; 

