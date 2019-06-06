/* Version : 1.0 
/* Date : 06-06-2019 
   Created By : Eduardo Rocha
   Modified By : Eduardo Rocha 
   Description: Add the email column and the Superintendent Query for the Elements Staff, StaffEducationOrganizationEmploymentAssociation 
                and StaffEducationOrganizationAssigmentAssociation */


/* Staff - Principals and Counselors*/

SELECT DISTINCT [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID], [rsccc_BHR_EMP_DEMO].[NAME_F], [rsccc_BHR_EMP_DEMO].[NAME_M], [rsccc_BHR_EMP_DEMO].[NAME_L], 
CASE WHEN [rsccc_BHR_EMP_DEMO].[EMAIL] = '' THEN LOWER((LEFT([rsccc_BHR_EMP_DEMO].[NAME_F], 1) + [rsccc_BHR_EMP_DEMO].[NAME_L] + '@granger.txed.net')) 
     WHEN [rsccc_BHR_EMP_DEMO].[EMAIL] <> '' THEN LOWER([rsccc_BHR_EMP_DEMO].[EMAIL]) 
END AS Email_Address 
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_PRINCIPAL_COUNSELORS] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] 
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000407' 
AND ([rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] IS NOT NULL) 
AND [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID] = '001'
ORDER BY [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID];


/* Staff 2 - Teachers and Staff */

SELECT DISTINCT [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_BHR_EMP_DEMO].[NAME_F], [rsccc_BHR_EMP_DEMO].[NAME_M], [rsccc_BHR_EMP_DEMO].[NAME_L], 
CASE WHEN [rsccc_BHR_EMP_DEMO].[EMAIL] = '' THEN LOWER((LEFT([rsccc_BHR_EMP_DEMO].[NAME_F], 1) + [rsccc_BHR_EMP_DEMO].[NAME_L] + '@granger.txed.net')) 
     WHEN [rsccc_BHR_EMP_DEMO].[EMAIL] <> '' THEN LOWER([rsccc_BHR_EMP_DEMO].[EMAIL]) 
END AS Email_Address 
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_INSTR_CYR].[STAFF_ID]
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000017' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] IS NOT NULL
ORDER BY [rsccc_CR_INSTR_CYR].[STAFF_ID];

/* Superintendent */

SELECT DISTINCT [rsccc_DR_DEMO].[SCH_YR], [rsccc_DR_DEMO].[DIST_ID], [rsccc_DR_DEMO].[DIST_NAME], [rsccc_DR_DEMO].[STR_NBR_DIST], [rsccc_DR_DEMO].[STR_NAME_DIST], [rsccc_DR_DEMO].[CITY_NAME_DIST], 
[rsccc_DR_DEMO].[STATE_CD], [rsccc_DR_DEMO].[ZIP_DIST], [rsccc_DR_DEMO].[AREA_CD_DIST], [rsccc_DR_DEMO].[PHONE_NBR_DIST], [rsccc_DR_DEMO].[SUPERDT_NAME_L], [rsccc_DR_DEMO].[SUPERDT_NAME_F], 
[rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED], [rsccc_BHR_EMP_DEMO].[EMP_NBR], [rsccc_BHR_EMP_DEMO].[EMAIL], [rsccc_BHR_RESPONSIBILITY].[ROLE_ID], [rsccc_ET_C021_ROLEID].[ROLE_DESCR] 
FROM [rsccc_DR_DEMO], [rsccc_BHR_EMP_DEMO], [rsccc_BHR_RESPONSIBILITY] 
LEFT JOIN [rsccc_ET_C021_ROLEID] ON [rsccc_BHR_RESPONSIBILITY].[ROLE_ID] = [rsccc_ET_C021_ROLEID].[ROLE_CD] 
WHERE ([rsccc_BHR_EMP_DEMO].[NAME_L] = [rsccc_DR_DEMO].[SUPERDT_NAME_L] AND [rsccc_BHR_RESPONSIBILITY].[EMP_NBR] = [rsccc_BHR_EMP_DEMO].[EMP_NBR]);


/* StaffEducationOrganizationEmploymentAssociation */
/* Principals and Counselors */
SELECT DISTINCT [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID],  [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID], [rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED]
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_PRINCIPAL_COUNSELORS] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] 
RIGHT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_DEMO].[CAMPUS_ID] = [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID]
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000407' 
AND ([rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] IS NOT NULL) AND [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID] = '001'
ORDER BY [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID]; 


/* StaffEducationOrganizationEmploymentAssociation - 2 */
/* Teachers and Staff */
SELECT DISTINCT [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_INSTR_CYR].[CAMPUS_ID], [rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED]
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_INSTR_CYR].[STAFF_ID] 
RIGHT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_DEMO].[CAMPUS_ID] = [rsccc_CR_INSTR_CYR].[CAMPUS_ID]
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000017'
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] IS NOT NULL
ORDER BY [rsccc_CR_INSTR_CYR].[STAFF_ID]; 

/* StaffEducationOrganizationEmploymentAssociation */
/* Superintendent */

SELECT DISTINCT [rsccc_DR_DEMO].[SCH_YR], [rsccc_DR_DEMO].[DIST_ID], [rsccc_DR_DEMO].[DIST_NAME], [rsccc_DR_DEMO].[STR_NBR_DIST], [rsccc_DR_DEMO].[STR_NAME_DIST], [rsccc_DR_DEMO].[CITY_NAME_DIST], 
[rsccc_DR_DEMO].[STATE_CD], [rsccc_DR_DEMO].[ZIP_DIST], [rsccc_DR_DEMO].[AREA_CD_DIST], [rsccc_DR_DEMO].[PHONE_NBR_DIST], [rsccc_DR_DEMO].[SUPERDT_NAME_L], [rsccc_DR_DEMO].[SUPERDT_NAME_F], 
[rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED], [rsccc_BHR_EMP_DEMO].[EMP_NBR], [rsccc_BHR_EMP_DEMO].[EMAIL], [rsccc_BHR_RESPONSIBILITY].[ROLE_ID], [rsccc_ET_C021_ROLEID].[ROLE_DESCR] 
FROM [rsccc_DR_DEMO], [rsccc_BHR_EMP_DEMO], [rsccc_BHR_RESPONSIBILITY] 
LEFT JOIN [rsccc_ET_C021_ROLEID] ON [rsccc_BHR_RESPONSIBILITY].[ROLE_ID] = [rsccc_ET_C021_ROLEID].[ROLE_CD] 
WHERE ([rsccc_BHR_EMP_DEMO].[NAME_L] = [rsccc_DR_DEMO].[SUPERDT_NAME_L] AND [rsccc_BHR_RESPONSIBILITY].[EMP_NBR] = [rsccc_BHR_EMP_DEMO].[EMP_NBR]);


/* StaffEducationOrganizationAssigmentAssociation */

SELECT DISTINCT [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID],  [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID], [rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED], [rsccc_ET_C021_ROLEID].[ROLE_DESCR] 
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_PRINCIPAL_COUNSELORS] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] 
RIGHT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_DEMO].[CAMPUS_ID] = [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID] 
LEFT JOIN [rsccc_ET_C021_ROLEID] ON [rsccc_ET_C021_ROLEID].[ROLE_CD] = [rsccc_CR_PRINCIPAL_COUNSELORS].[ROLE_ID]
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000407' 
AND ([rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID] IS NOT NULL) AND [rsccc_CR_PRINCIPAL_COUNSELORS].[CAMPUS_ID] = '001'
ORDER BY [rsccc_CR_PRINCIPAL_COUNSELORS].[STAFF_ID]; 


/* StaffEducationOrganizationAssigmentAssociation - 2 */

SELECT DISTINCT [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_INSTR_CYR].[CAMPUS_ID], [rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED], 'Teacher' AS Role_Desc
FROM [rsccc_BHR_EMP_DEMO] LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_BHR_EMP_DEMO].[EMP_NBR] = [rsccc_CR_INSTR_CYR].[STAFF_ID] 
RIGHT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_DEMO].[CAMPUS_ID] = [rsccc_CR_INSTR_CYR].[CAMPUS_ID]
WHERE [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%999%' and [rsccc_BHR_EMP_DEMO].[EMP_NBR] not like '%888%' AND [rsccc_BHR_EMP_DEMO].[EMP_NBR] <> '000017' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] IS NOT NULL
ORDER BY [rsccc_CR_INSTR_CYR].[STAFF_ID]; 

/* StaffEducationOrganizationAssigmentAssociation */
/* Superintendent */

SELECT DISTINCT [rsccc_DR_DEMO].[SCH_YR], [rsccc_DR_DEMO].[DIST_ID], [rsccc_DR_DEMO].[DIST_NAME], [rsccc_DR_DEMO].[STR_NBR_DIST], [rsccc_DR_DEMO].[STR_NAME_DIST], [rsccc_DR_DEMO].[CITY_NAME_DIST], 
[rsccc_DR_DEMO].[STATE_CD], [rsccc_DR_DEMO].[ZIP_DIST], [rsccc_DR_DEMO].[AREA_CD_DIST], [rsccc_DR_DEMO].[PHONE_NBR_DIST], [rsccc_DR_DEMO].[SUPERDT_NAME_L], [rsccc_DR_DEMO].[SUPERDT_NAME_F], 
[rsccc_BHR_EMP_DEMO].[DT_LAST_CHANGED], [rsccc_BHR_EMP_DEMO].[EMP_NBR], [rsccc_BHR_EMP_DEMO].[EMAIL], [rsccc_BHR_RESPONSIBILITY].[ROLE_ID], [rsccc_ET_C021_ROLEID].[ROLE_DESCR] 
FROM [rsccc_DR_DEMO], [rsccc_BHR_EMP_DEMO], [rsccc_BHR_RESPONSIBILITY] 
LEFT JOIN [rsccc_ET_C021_ROLEID] ON [rsccc_BHR_RESPONSIBILITY].[ROLE_ID] = [rsccc_ET_C021_ROLEID].[ROLE_CD] 
WHERE ([rsccc_BHR_EMP_DEMO].[NAME_L] = [rsccc_DR_DEMO].[SUPERDT_NAME_L] AND [rsccc_BHR_RESPONSIBILITY].[EMP_NBR] = [rsccc_BHR_EMP_DEMO].[EMP_NBR]);


/* StaffSchoolAssociation */

SELECT DISTINCT [rsccc_CR_INSTR_CYR].[INSTR_ID], [rsccc_CR_INSTR_CYR].[STAFF_ID], 'Regular Education' AS Prg_Assignment, 
[rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_INSTR_CYR].[CAMPUS_ID] 
FROM [rsccc_CR_INSTR_CYR] LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_CR_INSTR_CYR].[INSTR_ID] = [rsccc_CR_MET_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE ([rsccc_CR_INSTR_CYR].[INSTR_ID] IS NOT NULL) AND [rsccc_CR_INSTR_CYR].[STAFF_ID] <> 'T00002' 
ORDER BY [rsccc_CR_INSTR_CYR].[STAFF_ID]  ; 


/* StaffSectionAssociation */
/* Semester Classes */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[DT_ENTRY], 
LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Fall Semester' 
     WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2019' THEN 'Spring Semester' 
END AS Semestre, [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_INSTR_CYR].[INSTR_ID] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] <> '3' AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 


/* StaffSectionAssociation - 2 */
/* Year Classes Fall Semester */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[DT_ENTRY], 
LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem, 
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Fall Semester' 
END AS Semestre , [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_INSTR_CYR].[INSTR_ID] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019' 
AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 


/* StaffSectionAssociation - 3 */
/* Year Classes Spring Semester Pass 2 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[PER_BEGIN], [rsccc_CR_MET_CYR].[DT_ENTRY], 
LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2019' THEN 'Spring Semester' 
END AS Semestre, [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_INSTR_CYR].[INSTR_ID] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' 
AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' 
AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2018' AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 


/* StaffSectionAssociation - 4 */
/* Year Classes Spring Semester Pass 1 */

SELECT DISTINCT [rsccc_DR_CRS_OFFERED_CYR].[SCH_YR], [rsccc_CR_DEMO].[DIST_ID], [rsccc_CR_MET_CYR].[CAMPUS_ID], [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR], [rsccc_CR_MET_CYR].[SEC_NBR], [rsccc_CR_MET_CYR].[SEQ_NBR], [rsccc_CR_MET_CYR].[DT_ENTRY], LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) AS DateSem,
CASE WHEN LEFT([rsccc_CR_MET_CYR].[DT_ENTRY],4) = '2018' THEN 'Spring Semester' 
END AS Semestre, [rsccc_CR_INSTR_CYR].[STAFF_ID], [rsccc_CR_INSTR_CYR].[INSTR_ID] 
FROM [rsccc_DR_CRS_OFFERED_CYR] 
LEFT JOIN [rsccc_CR_MET_CYR] ON [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] = [rsccc_CR_MET_CYR].[CRS_NBR] 
RIGHT JOIN [rsccc_ET_C179_CLASS_TYP] ON [rsccc_DR_CRS_OFFERED_CYR].[CLASS_TYPE_CD] = [rsccc_ET_C179_CLASS_TYP].[CLASS_TYP_CD] 
LEFT JOIN [rsccc_CR_INSTR_CYR] ON [rsccc_CR_MET_CYR].[INSTR_ID] = [rsccc_CR_INSTR_CYR].[INSTR_ID] 
LEFT JOIN [rsccc_CR_DEMO] ON [rsccc_CR_INSTR_CYR].[CAMPUS_ID] = [rsccc_CR_DEMO].[CAMPUS_ID] 
WHERE [rsccc_CR_MET_CYR].[CAMPUS_ID] IS NOT NULL AND [rsccc_CR_MET_CYR].[DT_WDRAW] = '' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0001' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0301' 
AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0402' AND [rsccc_CR_MET_CYR].[CRS_NBR] <> '0501' AND [rsccc_CR_MET_CYR].[SEM_CD] = '3' AND [rsccc_DR_CRS_OFFERED_CYR].[SVC_ID] <> '8EXCLUDE' 
AND LEFT([rsccc_CR_MET_CYR].[DT_ENTRY] , 4) <> '2019' AND [rsccc_CR_INSTR_CYR].[STAFF_ID] NOT LIKE '%T000%' 
ORDER BY [rsccc_DR_CRS_OFFERED_CYR].[CRS_NBR] ; 

