<!-- Overview of the analysis: Explain the purpose of this analysis.-->
## Overview
The purpose of this project is to query the relational database system PosgreSQL with pgAdmin as its interface to extract data from company Pewlett_Hackard's employee information csv files. Extracted data is then exported as csv to be saved. Data of interest include but is not limited to
- Position titles of current employees per position title across all departments born between 1952 through 1955 that are entering retirement age,
- Amount of current employees per position title across all departments born between 1952 through 1955 that are reaching retirement age, and
- Current employees born in 1965 who are eligible for a mentorship program to train new hires once employees retire.

## Resources
Data source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

Software: PosgreSQL 11.15, Python 3.9.7, Visual Studio Code (VSCode) 1.63.2

<!-- Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.-->
## Results
- A total of 7 position titles have current employees that are reaching retirement age.

- Titles
    - Senior Engineer
    - Senior Staff
    - Engineer
    - Staff
    - Technique Leader
    - Assistant Engineer
    - Manager

- Amount of employees of each perspective title that are anticipated to retire
    - 25,916 Senior Engineers
    - 24,926 Senior Staff
    - 9,285 Engineers
    - 7,636 Staff
    - 3,603 Technique Leaders
    - 1,090 Assistant Engineers
    - 2 Managers

- A total of 1,549 current employees are eligible for the mentorship program.

<!-- Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
    - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?-->
## Summary
Based on the provided data, one may conclude the following:
    - A total of 7 titles which sum up to 72,458 total employees are reaching retirement age. This implies that an average of approximately 10,351 vacancies per title will need to be filled.
    Table or further information may be found in retiring_titles.csv.

    - Only 1,549 employees are considered to be eligible for the mentorship program therefore unless one mentor is assigned to multiple new-hires, the number is not even sufficient for mentoring new Senior Engineers.
    Table or further information may be found in mentorship_eligibility.csv.

Through further querying, one may also notice:
    - No manager is considered eligible for mentorship even if two manager vacancies are anticipated to appear.
    Table or further information may be found in mentor_titles.csv.

    - Of all employees eligible for mentorship, the most recently hired is Oscar Oppitz, employee number 418247, title Senior Staff, who is hired on July 27, 2002. This implies that all potential mentors have at least ten years' experience working with Pewlett_Hackard and likely will be excellent mentors.
    Table or further information may be found in mentor_from_date.csv.

    - Employees eligible for mentorship have salaries ranging from $40,000 to $114,784, which suggests that Pewlett_Hackard may want to set aside a budget to pay the mentors a reasonable salary.
    Table or further information may be found in mentor_salary.csv.
