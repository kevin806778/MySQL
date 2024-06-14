SELECT shohin_catalg, COUNT(*) AS cnt_shohin
FROM shohinsum
WHERE cnt_shohin = 4
GROUP BY shohin_catalg;
