--level1-1
SELECT 商品コード,商品名,単価,商品区分,関連商品コード
FROM 商品;

--level1-2
SELECT 商品名
FROM　商品;

--level1-3
SELECT *
FROM 注文;

--level1-4
SELECT 注文番号,注文枝番,商品コード
FROM 注文;

--level1-5
INSERT INTO 商品(商品コード,商品名,単価,商品区分)
VALUES('W0461','冬のあったかコート',12800,1);
INSERT INTO 商品(商品コード,商品名,単価,商品区分)
VALUES('S0331','春のさわやかコート',6800,1);
INSERT INTO 商品(商品コード,商品名,単価,商品区分)
VALUES('A0582','秋のシックなコート',9800,1);
