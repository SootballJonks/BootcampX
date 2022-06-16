/* Calculate the average total duration of assistance requests for each cohort.

Use the "Total Cohort Assist Duration" query as a sub query to determine the duration per cohort.
Return a single row average_total_duration
*/
----------------------------------------------------------
SELECT avg(total_duration) AS average_total_duration
FROM (
  SELECT cohorts.name AS cohort, sum(completed_at-started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations
----------------------------------------------------------
/* Expected Result:

 average_total_duration 
------------------------
 555:22:25.909091
(1 row)
*/