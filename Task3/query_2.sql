CREATE VIEW sibling_count AS
    WITH students_with_siblings AS (
        SELECT
            student.person_id AS students, 
            COALESCE ( COUNT ( sibling.sibling_student_id ), 0 ) AS siblings
        FROM
            student
            LEFT JOIN sibling 
            ON sibling.person_id = student.person_id
        GROUP BY student.person_id
    )

    SELECT 
        COUNT(students) AS students, 
        siblings
    FROM students_with_siblings
    GROUP BY siblings
    ORDER BY siblings ASC;