/* Get the total duration of all assistance requests for each cohort.

Select the cohort's name and the total duration the assistance requests.
Order by total_duration.
Look at the ERD to see how to join the tables.
*/
----------------------------------------------------------
SELECT cohorts.name AS cohort, sum(completed_at - started_at) AS total_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration
----------------------------------------------------------
/* Expected Result:

 cohort | total_duration 
--------+----------------
 JUL30  | 390:35:20
 AUG27  | 398:19:00
 JUL02  | 453:50:30
 NOV19  | 462:34:40
 MAY07  | 480:10:55
 ...
 (11 rows)
 */