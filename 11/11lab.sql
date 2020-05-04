START TRANSACTION;
	INSERT INTO sportproducts.product VALUE (5, 'creatine', 380, 5, 2, 1, 'forbodybuilding');
	INSERT INTO sportproducts.product VALUE (6, 'pants', 500, 1, 1, 2, 'forrunnig');
	INSERT INTO sportproducts.product VALUE (7, 'grif', 1580, 2, 4, 1, '20kggrig');
	INSERT INTO sportproducts.product VALUE (8, 'ball', 800, 6, 4, 3, 'forcrossfit');
COMMIT;
ROLLBACK;

INSERT INTO `sportproducts`.`brand` (`id`, `name`, `country`) VALUES ('6', 'nike', 'usa');
START TRANSACTION;
	INSERT INTO sportproducts.product VALUE (5, 'creatine', 380, 5, 2, 1, 'forbodybuilding');
	INSERT INTO sportproducts.product VALUE (6, 'pants', 500, 1, 1, 2, 'forrunnig');
	INSERT INTO sportproducts.product VALUE (7, 'grif', 1580, 2, 4, 1, '20kggrig');
	INSERT INTO sportproducts.product VALUE (8, 'ball', 800, 6, 4, 3, 'forcrossfit');
COMMIT;