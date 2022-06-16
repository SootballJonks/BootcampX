/* Perform the "Teachers That Assisted" query, but include the number of assistances as well.*/
----------------------------------------------------------
SELECT teachers.name as teacher, cohorts.name AS cohort, count(assistance_requests) AS total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher
----------------------------------------------------------
/* Expected Result:

      teacher       | cohort | total_assistances 
--------------------+--------+-------------------
 Cheyanne Powlowski | JUL02  |               336
 Georgiana Fahey    | JUL02  |               158
 Helmer Rodriguez   | JUL02  |               157
 Jadyn Bosco        | JUL02  |               177
...
(8 rows)
*/