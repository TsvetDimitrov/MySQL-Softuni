-- 12. Highest Peaks in Bulgaria --

SELECT mc.country_code, m.mountain_range, p.peak_name, p.elevation FROM peaks  AS p 
JOIN mountains_countries AS mc ON p.mountain_id = mc.mountain_id
JOIN mountains AS m ON m.id = p.mountain_id
WHERE mc.country_code = 'BG' AND p.elevation > 2835
ORDER BY p.elevation DESC;