/* Step 1 */
SELECT *
FROM global_data

/* Step 2 */
SELECT *
FROM city_list
WHERE city LIKE 'Tok%' AND country LIKE 'Japan%'

/* Step 3 */
SELECT *
FROM city_data
WHERE city = 'Tokyo' AND country = 'Japan'

/* Step 4 */
SELECT avg_temp as tokyo_avg_temp
FROM city_data
WHERE UPPER (city) LIKE '%TOKYO%'
;

/* Step 5 */
SELECT g.year,  g.avg_temp AS global_avg_temp, c.avg_temp AS tokyo_avg_temp
FROM global_data g
JOIN city_data c
ON g.year = c.year
WHERE UPPER (C.city) LIKE '%TOKYO%'
ORDER BY c.year
;

/* Step 6 */
SELECT g.year, g.avg_temp AS global_avg_temp, c.avg_temp AS chicago_avg_temp
FROM global_data g
JOIN city_data c
ON g.year = c.year
WHERE UPPER (C.city) LIKE '%CHICAGO%'
ORDER BY c.year
;
