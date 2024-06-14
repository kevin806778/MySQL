SELECT buying_price, COUNT(*) AS 記錄筆數
FROM shohin
WHERE shohin_catalg = '衣物'
GROUP BY buying_price;
