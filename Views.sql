-- PROBLEM 1
CREATE OR REPLACE VIEW criticalcases AS
    SELECT
        patient.ssn AS patient_ssn,
        firstname   AS firstname,
        lastname    AS lastname,
        numberofadmissionstoicu
    FROM
        (
            SELECT
                ssn,
                COUNT(*) AS numberofadmissionstoicu
            FROM
                admission,
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
                ) r1
            WHERE
                admission.admissionnum = r1.admissionnum
            GROUP BY
                ssn
            HAVING
                COUNT(*) >= 2
        ) r2,
        patient
    WHERE
        r2.ssn = patient.ssn;
        
        
