SELECT assignment_id as id,
  name,
  day,
  chapter,
  total_requests
FROM (
  SELECT assignment_id, count(id) as total_requests
  FROM assistance_requests
  GROUP BY assignment_id
) as requests_table
JOIN assignments ON assignment_id = assignments.id
ORDER BY total_requests DESC;