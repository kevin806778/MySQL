CREATE TABLE SampleLike
(strcol  varchar(10) NOT NULL)

START TRANSACTION;
INSERT INTO SampleLike (strcol) VALUES ('abcddd');
INSERT INTO SampleLike (strcol) VALUES ('dddabc');
INSERT INTO SampleLike (strcol) VALUES ('abdddc');
INSERT INTO SampleLike (strcol) VALUES ('abcdd');
INSERT INTO SampleLike (strcol) VALUES ('ddabc');
INSERT INTO SampleLike (strcol) VALUES ('abddc');
COMMIT;

SELECT * 
FROM SampleLike 
WHERE strcol LIKE 'ddd%';

SELECT * 
FROM SampleLike 
WHERE strcol LIKE '%ddd%';

SELECT * 
FROM SampleLike 
WHERE strcol LIKE '%ddd';