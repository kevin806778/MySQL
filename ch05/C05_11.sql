SELECT shohin_catalg,shohin_name,sell_price
FROM shohin
HAVING sell_price > (SELECT AVG(sell_price) FROM shohin);
