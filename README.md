<!-- Overview of the analysis: Explain the purpose of this analysis.-->
## Overview
The purpose of this project is to elucidate data of interest which include

- Position titles of current employees per position title across all departments born between 1952 through 1955 that are entering retirement age,

- Number of current employees per position title across all departments born between 1952 through 1955 that are reaching retirement age, and

- Current employees born in 1965 who are eligible for a mentorship program to train new hires once employees retire.

To accomplish these goals I build an employee database from six comma-separated values (CSV) files using an entity relationship diagram (ERD), then query the relational database system PostgreSQL with pgAdmin as its interface to extract data. Extracted data is then exported as CSV files to report to the Human Resources Department. 

---

<!-- Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.-->
## Results
- A screenshot of the ERD is shown below.
    
    ![EmployeeDB](https://user-images.githubusercontent.com/96349090/155703088-ec5e1e94-bd1c-436f-8eab-b6d6d66df4d6.png)

    
- A total of 7 position titles have current employees reaching retirement age.

- Titles
    - Senior Engineer
    - Senior Staff
    - Engineer
    - Staff
    - Technique Leader
    - Assistant Engineer
    - Manager

- Amount of employees of each perspective title that will be retiring:
    - 25,916 Senior Engineers
    - 24,926 Senior Staff
    - 9,285 Engineers
    - 7,636 Staff
    - 3,603 Technique Leaders
    - 1,090 Assistant Engineers
    - 2 Managers

- A screenshot of table retiring_titles is shown below.
    
    ![retiring_titles](https://user-images.githubusercontent.com/96349090/155700975-0d2b0483-545c-4159-a3f1-25e9d07f12a5.png)


- A total of 1,549 current employees are eligible for the mentorship program.

- A screenshot of the table mentorship_eligibility is shown below.
    
    ![mentorship_eligibility](https://user-images.githubusercontent.com/96349090/155701062-9ee47992-45f8-4c86-80d9-e138107fbafc.png)

---

<!-- Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
    - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?-->
## Summary
Based on the provided data, one may conclude the following:

- A total of 7 titles which sum up to 72,458 total employees are reaching retirement age. This implies that an average of approximately 10,351 vacancies per title will need to be filled.

- Only 1,549 employees are considered to be eligible for the mentorship program therefore unless one mentor is assigned to multiple new hires, the number is insufficient even for only mentoring Senior Engineers positions.

Through further querying, one may also notice:
- No manager is considered eligible for mentorship even if two manager vacancies are anticipated to appear.

    A screenshot of table mentor_titles is shown below.
    
    ![mentor_titles](https://user-images.githubusercontent.com/96349090/155701162-d07a8bd6-6966-4aee-acb1-b23e183ed8eb.png)


- Of all employees eligible for mentorship, the most recently hired is Oscar Oppitz, employee number 418247, title Senior Staff, who is hired on July 27, 2002. This implies that all potential mentors have at least ten years of experience working with Pewlett Hackard and likely will be excellent mentors.

    A screenshot of table mentor_from_date is shown below.
    
    ![mentor_from_date](https://user-images.githubusercontent.com/96349090/155701299-3747615e-8b7b-4e2b-acda-c08c4aeae8fe.png)


- Employees eligible for mentorship have salaries ranging from $40,000 to $114,784, which suggests that Pewlett Hackard may want to set aside a budget to pay the mentors a reasonable salary.

    A screenshot of table mentor_salary is shown below.
    
    ![mentor_salary](https://user-images.githubusercontent.com/96349090/155701344-27021dc4-0983-4831-b722-d5ccc740c375.png)

---

## Resources
Data source: 

    departments.csv
    dept_emp.csv
    dept_manager.csv
    employees.csv
    salaries.csv
    titles.csv

Tools: 

    pgAdmin
    PostgreSQL 11.15
    Python 3.9.7
    Structured Query Language (SQL)
    Visual Studio Code (VSCode) 1.63.2
    
---

### Contact

Email: show.wang94@gmail.com

LinkedIn: [https://www.linkedin.com/in/s-k-wang](https://www.linkedin.com/in/s-k-wang)
