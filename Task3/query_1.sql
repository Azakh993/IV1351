CREATE VIEW lesson_month_count AS
    WITH all_lessons_2022 AS (
        SELECT 
            EXTRACT ( month FROM date) AS month,
            lesson_plan_id
        FROM lesson
            INNER JOIN time_slot
            ON time_slot.id = lesson.time_slot_id
        WHERE EXTRACT ( year FROM date ) = '2022'
    ),

    total_lessons AS (
        SELECT month, COUNT(*) as total
        FROM all_lessons_2022
        WHERE lesson_plan_id < 52
        GROUP BY month
    ),

    individual_lessons AS (
        SELECT month, COUNT(*) as individual
        FROM all_lessons_2022
        WHERE lesson_plan_id = 53
        GROUP BY month
    ),

    group_lessons AS (
        SELECT month, COUNT(*) as group
        FROM all_lessons_2022
        WHERE lesson_plan_id > 8 AND lesson_plan_id < 51
        GROUP BY month
    ),

    ensemble_lessons AS (
        SELECT month, COUNT(*) as ensemble
        FROM all_lessons_2022
        WHERE lesson_plan_id < 9
        GROUP BY month
    )
    
    SELECT
        total_lessons.month,
        individual_lessons.individual,
        group_lessons.group,
        ensemble_lessons.ensemble,
        total_lessons.total
    FROM 
        total_lessons
        INNER JOIN individual_lessons 
        ON individual_lessons.month = total_lessons.month
        INNER JOIN group_lessons 
        ON group_lessons.month = total_lessons.month
        INNER JOIN  ensemble_lessons 
        ON ensemble_lessons.month = total_lessons.month
    ORDER BY month ASC;