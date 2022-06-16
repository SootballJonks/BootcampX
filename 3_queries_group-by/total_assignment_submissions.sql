/* Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.
*/
----------------------------------------------------------
SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
from cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC
----------------------------------------------------------
/* Expected Result:

 cohort | total_submissions 
--------+-------------------
 SEP24  |              9328
 JUN04  |              8030
 APR09  |              7935
 NOV19  |              7231
 JUL02  |              5868
...
(11 rows)
*/