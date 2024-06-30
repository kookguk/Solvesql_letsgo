SELECT
  A.employee_id AS mentee_id,
  A.name AS mentee_name,
  B.employee_id AS mentor_id,
  B.name AS mentor_name
FROM
  employees A
  cross join employees B
WHERE
  A.join_date BETWEEN '2021-10-01' and '2021-12-31'
  AND B.join_date <= '2019.12.31'
  AND A.department != B.department
ORDER BY
  mentee_id,
  mentor_id