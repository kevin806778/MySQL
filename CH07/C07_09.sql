SELECT SS.store_id, SS.store_name, SS.shohin_id, 
	S.shohin_name, S.sell_price, ZS.stock_amount
	FROM StoreShohin_id = S.shohin_id
	INNER JOIN StocckShohin AS ZS
	ON SS.shohin_id = ZS.shohin_id
	WHERE ZS.whouse_id = 'S001'
ORDER BY store_id;
