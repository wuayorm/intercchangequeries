/* Version : 1.0 
/* Date : 06-04-2019 
   Created By : Eduardo Rocha
   Modified By : Eduardo Rocha */

/* Parent & StudentParentAssociation */ 

SELECT DISTINCT [rsccc_SR_STU_DEMO].[SCH_YR], [rsccc_SR_STU_DEMO].[unique_stu_id], [rsccc_SR_STU_DEMO].[STU_ID], [rsccc_SR_PARENT].[NAME_F], [rsccc_SR_PARENT].[NAME_L], 
CASE WHEN [rsccc_SR_PARENT].[RELAT] >= '2' THEN 'Mother'
     WHEN [rsccc_SR_PARENT].[RELAT] = '1' THEN 'Father' 
END AS Relation, 
CASE WHEN [rsccc_SR_PARENT].[RELAT] >= '2' THEN 'F' 
     WHEN [rsccc_SR_PARENT].[RELAT] = '1' THEN 'M' 
END AS Sex, 
CASE WHEN [rsccc_SR_PARENT].[RELAT] >= '2' THEN 'Ms' 
     WHEN [rsccc_SR_PARENT].[RELAT] = '1' THEN 'Mr' 
END AS Title, [rsccc_SR_PARENT].[PRIORITY], 
CASE WHEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] = '' AND [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] = '' THEN 'Other' 
     WHEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] <> '' AND [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] <> '' THEN 'Home' 
     WHEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] = '' AND [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] <> '' THEN 'Home'
END AS AddresType, 
CASE WHEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] = '' THEN '300' 
     WHEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] <> '' THEN [rsccc_SR_STU_DEMO].[STR_NBR_PHYS] 
END AS StrNum, 
CASE WHEN [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] = '' THEN 'NORTH COLORADO' 
     WHEN [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] <> '' THEN [rsccc_SR_STU_DEMO].[STR_NAME_PHYS] 
END AS StrName, 
[rsccc_SR_STU_DEMO].[APT_NBR_PHYS_ADDR], [rsccc_SR_STU_DEMO].[CITY_NAME_PHYS_ADDR], 
CASE WHEN [rsccc_SR_STU_DEMO].[ZIP_CODE_PHYS_ADDR] = '' THEN '76530' 
     WHEN [rsccc_SR_STU_DEMO].[ZIP_CODE_PHYS_ADDR] <> '' THEN [rsccc_SR_STU_DEMO].[ZIP_CODE_PHYS_ADDR] 
END AS ZipCode, [rsccc_SR_STU_DEMO].[PHYS_ADDR_STATE], [rsccc_SR_PARENT].[PHONE_AREA_CD], [rsccc_SR_PARENT].[PHONE_NBR], [rsccc_SR_PARENT].[CELL_PHONE] 
FROM [rsccc_SR_STU_DEMO] LEFT JOIN [rsccc_SR_PARENT] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_PARENT].[STU_ID] LEFT JOIN [rsccc_SR_STU_ENROLL] ON [rsccc_SR_STU_DEMO].[STU_ID] = [rsccc_SR_STU_ENROLL].[STU_ID] 
WHERE [rsccc_SR_PARENT].[PRIORITY] = '1' AND ([rsccc_SR_STU_ENROLL].[GRD_LVL] BETWEEN '07' AND '12') ORDER BY [rsccc_SR_STU_DEMO].[STU_ID] ;
