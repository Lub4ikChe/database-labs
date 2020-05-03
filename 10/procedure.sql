
drop procedure get_by_date;

DELIMITER //
create procedure get_by_date (in date1 date, in date2 date)
begin
	declare error char(45);
	set error = 'Некоректно задані дати';
	if (date1<=date2) then
	begin
		create table if not exists sportproducts.orders_by_date (username char(45),
		orderdate date, productname char(45));
		truncate sportproducts.orders_by_date;
		insert into sportproducts.orders_by_date 
        select user.name as username, `order`.datetime as orderdate, product.name as productname from user
			inner join `order` 
					on user.id = `order`.User_id
			inner join order_product
					on `order`.id = order_product.Order_id
			inner join product
					on order_product.Product_id = product.id
			where `order`.datetime between date1 and date2;
	end;
	else select error;
	end if;
end
