SELECT
	'Example Table' AS "Table Name", 
	max(c) AS "Max Seg Rows", min(c) AS "Min Seg Rows", 
	(max(c)-min(c))*100.0/max(c) AS "Percentage Difference Between Max & Min" 
FROM (
	SELECT
		count(*) c, 
		gp_segment_id 
	FROM
		demo.amazn_reviews
	GROUP BY 2
) AS a;
