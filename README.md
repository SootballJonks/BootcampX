# BootcampX W5 Scenario

This repo contains examples of various SQL queries, migrations, and seeds for a PostgreSQL application. I have updated the queries with comments to provide context to each exercise, and I have added some extra context for this repo below (including ERD examples).

---

*NOTE: This is a fictional scenario with fictional data.*

At Lighthouse Labs, we've decided to create a new application to help manage data about students and mentors. The backend and front end development are being completely outsourced to alumni, but the database queries are going to be written by the current students at Lighthouse Labs. That means you.

This application is currently under the project code name **BootcampX**. The app will allow our staff to help students and mentors better and faster by offering quick insight into data like assignment completion and the effectiveness of assistance requests.

For the **BootcampX** project, you will be responsible for writing all of the queries to get data from the database. That means writing a lot of SELECT statements, without having to worry about any JavaScript, HTML, or CSS. Once we have all of the queries written, the other devs can connect the backend, front end, and database together to complete the application.

([Click here to read about SQL JOINS](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/))

---

## Entities Part 1

The main entities for this application will be:

- students
- cohorts
- assignments
- assignment_submissions
- teachers
- assistance_requests

We're going to start off simple and just focus on the queries for two entities: students and cohorts.

A `cohort` will have the following attributes:

- id: A unique identifier
- name: The name of the cohort
- start_date: The cohorts' start date
- end_date: The cohorts' end date

A `student` will have the following attributes:

- id: A unique identifier
- name: The full name of the student
- email: The students' email address
- phone: The students' phone number
- github: The students' github profile url
- start_date: The students' start date of the Bootcamp
- end_date: The students' end date of the Bootcamp
- cohort_id: The id of the cohort that the student is enrolled in

We can model these entities in an Entity Relation Diagram (ERD):

[PLACEHOLDER]

---

## Entities Part 2

The next entities that we will be adding are `assignments` and `assignment_submissions`.

An `assignment` will have the following attributes:

- id: A unique identifier
- name: The name of the assignment
- content: The written content body of the assignment
- day: The day that the assignment appears on
- chapter: The order that the assignment will appear in the day.
- duration: The average time it takes a student to finish

An `assignment_submission` will have the following attributes:

- id: A unique identifier
- assignment_id: The id of the assignment
- student_id: The id of the student
- duration: The time it took the student to complete the assignment
- submission_date: The date is was submitted

A student will be able to submit an `assignment_submissions` for every single `assignment`. So a `student` will submit many `assignment_submissions` and an `assignment` will have many `assignment_submissions` associated with it.

We can model these entities in an Entity Relation Diagram (ERD):

[PLACEHOLDER]

---

## Entities Part 3

The next entities that we will be adding are `teachers` and `assistance_requests`.

A `teacher` will have the following attributes:

- id: A unique identifier
- name: The name of the teacher
- start_date: The date that the teacher started working.
- end_date: The date that the teacher stopped working.
- is_active: If the teacher is actively teaching right now.

An `assistance_request` will have the following attributes:

- id: A unique identifier
- assignment_id: The id of the assignment the request was made from
- student_id: The id of the student making the request
- teacher_id: The id of the teacher responding to the request
- created_at: The timestamp when the request was made
- started_at: The timestamp when the assistance started
- completed_at: The timestamp when the assistance was completed
- student_feedback: Feedback about the student given by the teacher
- teacher_feedback: Feedback about the teacher given by the student

A `student` can create many assistance_requests and a teacher can respond to many assistance_requests. 

ERD:

[PLACEHOLDER]