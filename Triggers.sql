-- PROBLEM 1
CREATE OR REPLACE TRIGGER tr_examine_insert BEFORE
    INSERT ON examine
    FOR EACH ROW
DECLARE
    is_critical INTEGER;
BEGIN
    SELECT
        COUNT(*)
    INTO is_critical
    FROM
        (
            SELECT
                admissionnum
            FROM
                stayin
            WHERE
                roomnum IN (
                    SELECT
                        roomnum
                    FROM
                        roomservice
                    WHERE
                        service = 'ICU'
                )
        )
    WHERE
        admissionnum = :new.admissionnum;

    IF (
        is_critical > 0
        AND :new.doctorscomment IS NULL
    ) THEN
        raise_application_error(-20001, 'examination on patient who has visited  the ICU must contain a comment');
    END IF;

END;
/