CREATE VIEW instructor_lesson_count AS
    WITH held_lessons AS (
    SELECT lesson_id, time_slot_id, instructor_person_id
    FROM lesson_booking
        INNER JOIN lesson
        ON lesson.id = lesson_id
        INNER JOIN time_slot
        ON time_slot.id = lesson.time_slot_id
    WHERE EXTRACT ( month FROM date) = EXTRACT (month FROM CURRENT_DATE)
    GROUP BY lesson_id, lesson.minimum_participants, lesson.time_slot_id, lesson.instructor_person_id
    HAVING COUNT(*) >= lesson.minimum_participants
    )

    SELECT
        (SELECT staff_id FROM instructor WHERE instructor.person_id = held_lessons.instructor_person_id),
        COUNT(*) as lessons
    FROM held_lessons
    GROUP BY instructor_person_id
    HAVING COUNT(*) > 50
    ORDER BY instructor_person_id DESC;