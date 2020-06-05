insert into CAR values (1,'297534','2019',' Suzuki','rad','good')
insert into CAR values (2,'186485','2017',' BMW','White','New')
insert into CAR values (3,'296345','2015','Toyota','Gray','good')
insert into CAR values (4,'864295','2018','MG','red','Very good')
insert into CAR values (5,'741965','2020',' Mercedes Benz','white','New')
select * from CAR
select car_id from CAR
select car_number from CAR
select Model from CAR
select car_Type from CAR
select car_color from CAR


insert into dbo.Tenant (t_id,name_of_tenant,Mobile,National_number,Employer,Nationality)
values (1,'ali mohamed','01010134176','12975642365018','Teacher','egy')

insert into dbo.Tenant (t_id,name_of_tenant,Mobile,National_number,Employer,Nationality)
values (2,'mohamed ali','01093644593','19753642598716','Accountant','egy')
insert into dbo.Tenant (t_id,name_of_tenant,Mobile,National_number,Employer,Nationality)
values (3,'Mahmoud Mohammed','01004466160','32495247812654','Nurse','egy')
insert into dbo.Tenant (t_id,name_of_tenant,Mobile,National_number,Employer,Nationality)
values (4,'Tareq Alshiekh','01026478213','36415300486017','Teacher','egy')

select * from Tenant
select t_id from Tenant
select name_of_tenant from Tenant
select Mobile from Tenant
select National_number from Tenant
select Employer from Tenant
select Nationality from Tenant


INSERT into dbo.Lease_contracts (contract_id,car_number,contract_number,Rental_date,Time_to_rent,Return_date,Time_to_return,Daily_rental_price,car_id)
values (1,'297534','361','20/6/2019','9 AM','21/6/2019','10 PM','500$',1)
INSERT into dbo.Lease_contracts (contract_id,car_number,contract_number,Rental_date,Time_to_rent,Return_date,Time_to_return,Daily_rental_price,car_id)
values (2,'186485','362','20/6/2019','10 AM','21/6/2019','10 PM','500$',2)
INSERT into dbo.Lease_contracts (contract_id,car_number,contract_number,Rental_date,Time_to_rent,Return_date,Time_to_return,Daily_rental_price,car_id)
values (3,'296345','363','20/6/2019','12 AM','21/6/2019','10 PM','500$',3)
INSERT into dbo.Lease_contracts (contract_id,car_number,contract_number,Rental_date,Time_to_rent,Return_date,Time_to_return,Daily_rental_price,car_id)
values (4,'864295','364','20/6/2019','1 PM','21/6/2019','10 PM','500$',4)
select * from Lease_contracts
select contract_id from Lease_contracts
select contract_number from Lease_contracts
select Rental_date from Lease_contracts
select Return_date from Lease_contracts
select Daily_rental_price from Lease_contracts


insert into dbo.payment_voucher (accountant_id,name_of_the_accountant,contract_number,the_amount,car_id)
values(1,'ali mohamed','555','1500$',1)
select * from payment_voucher

SELECT car_id ,model,car_number, 
  ( SELECT count(*) 
    FROM Tenant
    WHERE Tenant.car_id = CAR.car_id
  ) AS NumberOrders
FROM CAR



SELECT CAR.car_id, CAR.Model, result.t_id
FROM  CAR JOIN 
  (SELECT * FROM Tenant
   WHERE t_id BETWEEN 0160 AND 0165
  ) AS result
ON CAR.car_id = result.car_id;

SELECT SUM(Daily_rental_price) AS Total 
FROM Lease_contracts
WHERE contract_id NOT IN(
  SELECT contract_id
  FROM Lease_contracts
  );

      SELECT SUM(the_amount) AS 'Total ($)'
    FROM payment_voucher;
    
  
  SELECT CAR.car_id,name_of_tenant
FROM CAR
INNER JOIN Tenant ON CAR.car_id=Tenant.t_id;

SELECT CAR.car_id,model
FROM CAR
INNER JOIN Tenant ON CAR.car_id=Tenant.t_id;

 SELECT CAR.car_id,contract_number
FROM CAR
INNER JOIN Lease_contracts ON CAR.car_id=Lease_contracts.contract_id;

SELECT CAR.car_Type,contract_number
FROM CAR
INNER JOIN Lease_contracts ON CAR.car_id=Lease_contracts.contract_id;

SELECT CAR.car_Type,Daily_rental_price
FROM CAR
INNER JOIN Lease_contracts ON CAR.car_id=Lease_contracts.contract_id;

SELECT name_of_tenant,contract_id
FROM Tenant
INNER JOIN Lease_contracts ON Tenant.t_id=Lease_contracts.contract_id;

UPDATE CAR
set car_number='365552'
WHERE car_id=1;

UPDATE CAR
set Model='2020'
WHERE car_id=1;
UPDATE CAR
set car_id='65'
WHERE car_id=1;
UPDATE Tenant
set name_of_tenant='ali mohamed'
WHERE t_id=2;
UPDATE Tenant
set Mobile='01007610486'
WHERE t_id=2;

 
 DELETE FROM CAR
 WHERE car_id='1';
 select * from CAR

 DELETE FROM Tenant
 WHERE t_id='1';


 DELETE FROM Tenant
 WHERE name_of_tenant='ali mohamed';

 DELETE FROM Lease_contracts
 WHERE contract_id='1';

 DELETE FROM Lease_contracts
 WHERE Daily_rental_price='500$';




