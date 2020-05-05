use sportproducts;
DELETE FROM sportproducts.type
WHERE id = 2;

CREATE TRIGGER type_delete 
BEFORE DELETE ON sportproducts.type
FOR EACH ROW
UPDATE sportproducts.product SET Type_id=4 WHERE Type_id=OLD.id;

CREATE TRIGGER user_password 
BEFORE INSERT ON sportproducts.user
FOR EACH ROW
SET NEW.password = mycms_encode(NEW.password);

drop trigger user_password;

INSERT INTO sportproducts.user VALUES 
(7, 'John', 'Coffe', 'johncoffe@gmail.com', 'pass7'),
(8, 'Bill', 'Tumber', 'billtumber@gmail.com', 'pass8'),
(9, 'Jery', 'Lon', 'jerylon@gmail.com', 'pass9');


select * from sportproducts.user;
select `user`.id, mycms_decode(`user`.password)  as pass from `user`;


ALTER TABLE sportproducts.user 
ADD COLUMN last_activity DATETIME DEFAULT NULL;

CREATE TRIGGER user_last_activity 
AFTER INSERT ON sportproducts.order
FOR EACH ROW
UPDATE sportproducts.user SET user.last_activity=(NEW.datetime)
WHERE user.id=NEW.User_id;


INSERT INTO sportproducts.order VALUES 
(10, '2020-06-29 21:21:25', 1),
(11, '2020-04-27 21:21:25', 2);