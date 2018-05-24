drop table carlist;
go
create table carlist (
	id int identity(1, 1) not null primary key,
	make nvarchar(30) not null,
	model nvarchar(30) not null,
	[trim] nvarchar(10),
	[year] int not null,
	issedan bit not null default 0,
	purchaseprice decimal(7, 2) not null
);

insert carlist
	(make, model, [trim], [year], issedan, purchaseprice)
	values
	('Lexus', 'ES', '300', '2002', 1, 9000);

insert carlist
	(make, model, [trim], [year], issedan, purchaseprice)
	values
	('Infiniti', 'G37', 'S', '2008', 0, 26000);

insert carlist
	(make, model, [trim], [year], issedan, purchaseprice)
	values
	('Toyota', 'Corolla', 'Base', '2010', 1, 0);

Select c.make,
		c.model,
		c.[trim],
		c.[year],
		c.issedan,
		format(c.purchaseprice, 'C') as 'purchaseprice'
from carlist c;