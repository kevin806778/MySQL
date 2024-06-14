SELECT shohin_name, shohin_catalg, sell_price, 
	SUM(sell_price) OVER (ORDER BY shohin_id) AS current_sum
FROM Shohin;