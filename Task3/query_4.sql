CREATE MATERIALIZED VIEW genre_lessons AS
    SELECT
        TO_CHAR(time_slot.date, 'day') AS weekday,
        time_slot.start_time AS start_time,
        lesson.id AS lesson_id,
        genre.value AS genre,
        CASE
            WHEN COUNT(lesson_booking.person_id) = maximum_participants THEN 'no seats available'
            WHEN COUNT(lesson_booking.person_id) = maximum_participants - 1 THEN '1 seat available'
            WHEN COUNT(lesson_booking.person_id) = maximum_participants - 2 THEN '2 seats available'
            ELSE 'More than 2 seats available'
        END AS available_seats
    FROM
        lesson
        INNER JOIN time_slot
        ON time_slot.id = lesson.time_slot_id
        INNER JOIN lesson_plan
        ON lesson_plan.id = lesson.lesson_plan_id
        INNER JOIN genre
        ON genre.id = lesson_plan.genre_id
        LEFT JOIN lesson_booking
        ON lesson_booking.lesson_id = lesson.id
    WHERE DATE_TRUNC('week',time_slot.date) = DATE_TRUNC('week',CURRENT_DATE) + interval '1 week'
    GROUP BY time_slot.date, time_slot.start_time, lesson.id, genre.value
    ORDER BY time_slot.date, genre ASC;