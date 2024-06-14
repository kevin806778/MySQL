SELECT shohin_catalg, AVG(sell_price) AS 平均售價
FROM shohin
GROUP BY shohin_catalg
HAVING AVG(sell_price) >= 2500;
