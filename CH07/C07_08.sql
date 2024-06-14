SELECT sh.shohin_id, sh.shohin_name,sh.sell_price,
	ss.store_id, ss.store_name
	FROM Shohin AS sh LEFT OUTER JOIN StoreShohin AS ss
		ON sh.shohin_id = ss.store_id
ORDER BY store_id;