-- 降低襯衫的販售單價1000元
UPDATE shohinins
SET sell_price = sell_price - 1000
WHERE shohin_name = '襯衫';

-- 將T恤的販售單價調高1000元
UPDATE shohinins
SET sell_price = sell_price + 1000
WHERE shohin_name = 'T恤';