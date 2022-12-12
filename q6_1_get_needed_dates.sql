

WITH RECURSIVE dates(x) AS ( 
            SELECT '2012-10-22' 
                UNION ALL 
            SELECT DATE(x, '+1 DAYS') FROM dates WHERE x<'2012-11-06' 
        ) 
        SELECT * FROM dates


