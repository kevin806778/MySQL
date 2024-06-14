CREATE TABLE StoreShohin
(store_id  CHAR(4)       NOT NULL,
 store_name  VARCHAR(200) NOT NULL,
 shohin_id CHAR(4)       NOT NULL,
 s_amount     INTEGER       NOT NULL,
 PRIMARY KEY (store_id, shohin_id)) DEFAULT CHARSET=utf8;
