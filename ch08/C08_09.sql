SELECT shohin_catalg, SUM(sell_price)AS sum_price
FROM Shohin
GROUP BY ROLLUP(shohin_catalg);