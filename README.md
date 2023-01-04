# HHS_HCC_SQL

HHS HCC SQL Risk Score Model

This package was developed based on the CMS/HHS Published DIY SAS model for the HHS-HCC risk adjustment program, published at Regulations and Guidance | CMS. The current version was based on the DIY model published December 29, 2022, relying on the “instructions”  and “technical details” . We have made our best efforts to replicate the logic found in the CMS-published SAS algorithm in T-SQL assuming a Microsoft SQL Sever environment. For benefit years where HHS has not yet issued a DIY model (currently 2023 and 2024), the most recently published coefficients found in rulemaking was used.  Our interpretation of the model changes for 2023 and 2024 related to severity and transplant interaction factors required the use of some judgment, so it is possible HHS will implement it in a different manner.

Although this model has been tested and found to be consistent with the HHS SAS model and with EDGE server business rules and logic, it is offered AS IS with no warranty, express, implied or otherwise. The user assumes any and all risks associated with using this model, including potential risks to your data; it is HIGHLY recommended that you use a database dedicated to deploying this model, as the table creation scripts drops and recreates tables throughout. If you happen to have had a table named in the same way as this model named it, you could experience data loss. 

If you find any errors or suspected errors, please report them to me at wesley@evensun.co. If you would like assistance with interpreting the results of this model, you may reach out to me at the same address. Please do not share any protected health information when reaching out to me.

This package assumes a basic understanding of T-SQL; we do not provide technical support in implementing this model without a support or consulting agreement in place.

KNOWN LIMITATIONS:

1.	This model does not currently account for billable vs. non-billable member months in calculating PLRS by plan HIOS ID.
2.	This model requires you to split enrollment periods that cross plan years before inserting eligibility data.
3.	This model only applies basic selection logic concerning eligibility and service code inclusion criteria when determining claims eligibility. It does not apply other edits that may lead to claim exclusion in the EDGE server. Refer to the EDGE Server business rules published on https://regtap.cms.gov for more robust exclusion logic and to troubleshoot differences between this model and EDGE server results.

INSTRUCTIONS:

This package contains 3 SQL scripts. Scripts 1 and 2 (Input table creation and Reference Table Scripts) need only be run once (or when running an updated version of this model). The only input that needs to be changed for these scripts is the “USE” statement; change this to the database you will be using for this model. This model is built assuming the “dbo” schema is used and will not function properly if your privileges default you to another schema.

Once scripts 1 and 2 have been run, you will need to populate 4 tables that are created as a result with your own enrollment, claims, and supplemental diagnosis data.

1.	Enrollment. You must populate all fields in this table other than the EPAI field, paid through date field, and EDGE_MemberID field. These fields are not currently used in the model but can be used for your convenience in comparing these results to data in your EDGE server. Note the following:
a.	As noted above in the limitations section of this document, if an enrollment span crosses plan years, you must split it into two separate plan years. This should only affect small group membership. 
b.	The premium, subscriber number and subscriber flag can be populated with placeholder values as they do not currently affect the model.
c.	Populate the full 16-digit HIOS ID (including CSR Variant) in the HIOS_ID field. If unknown, populate with a dummy value ending in 00. This will result in no CSR induced demand adjustment being applied to eligibility records.
d.	Metal levels should be populated with one of the following values: Bronze, Silver, Gold, Platinum, or Catastrophic. 
e.	For market, use 1 for individual and 2 for small group

2.	Medical Claims
a.	Populate all lines of all approved claims, and fill the dollar amounts at the line level.
b.	All fields other than DX2-DX25, billtype, modifiers, revenue code, service code, and place of service are required. For formtype, indicate “P” for a professional (HCFA) claim and I for an institutional (UB) claim. Other form types are not supported since they are not eligible for risk adjustment. If the claim exceeds 25 diagnosis codes, use the supplemental table to add the diagnosis code. Service code should be populated with the relevant CPT/HCPCS if applicable. 
c.	Exclude any “.”s found in the ICD-10 diagnosis codes for a claim when populating the DX columns.
d.	Populate only the latest version of a claim; unlike the EDGE server, this model assumes a full replacement of all claims data any time it is executed.

3.	Supplemental
a.	Populate any supplemental diagnosis codes by linking it to a claim. Use “A” for Add and “D” for delete in the AddDeleteFlag column. All other values will lead to the supplemental record being ignored. 
b.	Exclude any “.”s found in the ICD-10 diagnosis codes for a claim when populating the DX columns.

4.	Pharmacy Claims
a.	All fields are required

Once these four tables have been populated, you can then run the “DIY Model Script v0.9.5.sql” script. Update the use statement on line 4 with the name of the database you are using. Set the benefit year to the model year you wish to use for calculating risk scores. This model package has benefit years 2021 to 2024 available. Ordinarily, you will want to use the benefit year corresponding to the incurred date and eligibility date of the claims data you have populated, as this will then correspond to your EDGE server submissions. However, you may wish to use other model years for analyzing impacts of risk adjustment model and coefficient changes on your risk scores.

Update the start date, end date, and paid through dates to the values you have populated in your input tables. Then, execute the script (F5). The script should take no more than a few minutes to run, depending on the size of your population and number of claims. By default, it then displays the risk score (weighted by member months) for each HIOS ID; however, the resulting temporary table (#riskscorepostCSR) joined to the hcc_list table could be queried directly for additional analysis.

If you have found this useful, please share it. If you have found bugs, please share that, too! I will try to update this as soon as CMS issues new reference tables or proposed / final coefficients and as bugs are found and corrected. If you have suggestions for improvement, please reach out as well. Happy risk adjusting!

Wesley Sanders
wesley@evensun.co
