SELECT shohin_catalg, reg_date,SUM(sell_price) AS sum_price
FROM Shohin
GROUP BY ROLLUP(shohin_catalg, reg_date);