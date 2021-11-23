SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id  = students.id
GROUP BY student
ORDER BY average_assignment_duration DESC;