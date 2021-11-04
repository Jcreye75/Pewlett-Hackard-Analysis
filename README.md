# Pewlett-Hackard-Analysis

## Overview of the analysis: 
Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: 
- Determine the number of retiring employees per title, and;
- Identify employees who are eligible to participate in a mentorship program. 

This report that summarizes the analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## Resources
- Data Source: dept_emp.csv; employees.csv; titles.csv; departments.csv; dept_manager.csv; salaries.csv
- Software: Git version 2.33.0.windows.2, pgAdmin 4 Version 5.7 PostgreSQL 11

## Results
Four major points from the two analysis deliverables are the following:

-  The first list for "Silver Tsunami" retriving the employees who were born between 1952 and 1955 (eleible for retirement equivalent to 133,766 "employees") it was found that duplicate entries exists for some employees because they have switched titles over the years. 
![Retirement_Titles](https://github.com/Jcreye75/Pewlett-Hackard-Analysis/blob/67be9aa54e5b0ddf4f5fb2dd51a351a2b4dd1e1e/Analysis%20Projects/Pewlett-Hackard-Analysis/Resources/Retirement_Titles.png)

- In order to remove dupllicated entries, it was used the DISTINCT ON statementin the SQL script so the list shows only one record per employee and his/hers current title. (The result is a list of elegible employees equivalent to 90,398 so 43,368 entries were duplicated vs previous table)
![Unique_Titles](https://github.com/Jcreye75/Pewlett-Hackard-Analysis/blob/67be9aa54e5b0ddf4f5fb2dd51a351a2b4dd1e1e/Analysis%20Projects/Pewlett-Hackard-Analysis/Resources/Unique_Titles.png)

- According to the previous list, it was detailed result, however in order to review the retirement employees per position, using the COUNT function, the following summary was gotten:
![Retiring_Titles](https://github.com/Jcreye75/Pewlett-Hackard-Analysis/blob/67be9aa54e5b0ddf4f5fb2dd51a351a2b4dd1e1e/Analysis%20Projects/Pewlett-Hackard-Analysis/Resources/Retiring_Titles.png)

- As the "Silver Tsunami" results brings a relevant number of possible employees that will leave soon the company, it is needed to know how many employees are available for a "Mentorship Eligibility Program" in the company. Therefore a list of current employees born in 1965 (So they can assume positions of the employees leaving") is prepared. The result is 1,549 EMployees.
![Mentorship_eligibilty](https://github.com/Jcreye75/Pewlett-Hackard-Analysis/blob/67be9aa54e5b0ddf4f5fb2dd51a351a2b4dd1e1e/Analysis%20Projects/Pewlett-Hackard-Analysis/Resources/Mentorship_eligibilty.png)

## Summary: Insight into the upcoming "silver tsunami."
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The "silver tsunami" will have a generate 90,398 vacancies.  

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

Only 1,549 employees born in 1965 are potencial mentees, so the bridge between 90,398 vs 1,549 is 88,849.

