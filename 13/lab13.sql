SHOW INDEX FROM sportproducts.user;

SHOW INDEX FROM sportproducts.order;

CREATE INDEX user_nameINDX ON sportproducts.user (id, name);
SHOW INDEX FROM sportproducts.user;

CREATE UNIQUE INDEX oorder_dateINDX ON sportproducts.order (User_id, datetime);
SHOW INDEX FROM sportproducts.order;

EXPLAIN SELECT U.id AS userID, U.name AS username, 
			   O.datetime AS orderTime, P.price
FROM sportproducts.user U 
INNER JOIN sportproducts.order O
	ON U.id = O.User_id
INNER JOIN sportproducts.order_product OP
	ON O.id = OP.Order_id
INNER JOIN sportproducts.product P
	ON OP.Product_id = P.id
    WHERE O.datetime > '2020-03-20 00:00:00';


EXPLAIN SELECT STRAIGHT_JOIN U.id AS userID, U.name AS username, 
			   O.datetime AS orderTime, P.price
FROM sportproducts.user U 
INNER JOIN sportproducts.order O
	ON U.id = O.User_id
INNER JOIN sportproducts.order_product OP
	ON O.id = OP.Order_id
INNER JOIN sportproducts.product P
	ON OP.Product_id = P.id
    WHERE O.datetime > '2020-03-20 00:00:00';
