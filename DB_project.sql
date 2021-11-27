create database Project;
use project;

create table Categories(
 Cat_ID varchar (8),
 Cat_Name varchar(20),
 Primary key (Cat_ID)
);

INSERT INTO categories (`Cat_ID`, `Cat_Name`) 
VALUES ('1', 'Fruits'),
('2', 'Vegetables'),
('3', 'Meat'),
('4', 'Fish'),
('5', 'Chicken');

create table Products(
Product_ID varchar (8),
Product_Name varchar (20),
Product_Price varchar (6),
Category varchar(8),
PRIMARY KEY(Product_ID),
FOREIGN KEY (Category) references categories(Cat_ID)
 );
 
INSERT INTO Products  (`Product_ID`, `Product_Name`, `Product_Price`, `Category`)
VALUES ('11', 'Apple', '160', '1'),
('12', 'Banana', '50', '1'),
('13', 'Mango', '140', '1'),
('21', 'Carrot', '70', '2'),
('22', 'Onion', '110', '2'),
('23', 'Potato', '60', '2'),
('31', 'Beef', '200', '3'),
('32', 'Chicken', '170', '3'),
('33', 'Mutton', '250', '3'),
('41', 'Ilish', '120', '4'),
('42', 'Prawn', '180', '4'),
('43', 'Rui', '150', '4'),
('51', 'Bread', '40', '5'),
('52', 'Egg', '80', '5'),
('53', 'Milk', '90', '5');


create table Employees(
Employee_ID varchar(8),
Employee_Name varchar (20),
Employee_PhoneNo varchar (15),
Client_ID varchar (8),
Message varchar(20),
primary key (Employee_ID)
);

INSERT INTO  employees (`Employee_ID`, `Employee_Name`, `Employee_PhoneNo`, `Client_ID`,`Message`) 
VALUES ('16101011', 'Nishat Shahrin', '01535868890', '18201067','Done'),
('16101012', 'Sheikh Nipa', '01535868891', '18201062','On the way'),
('16101013', 'Tanjina Saif', '01535868892', '18201065','Done'),
('16101014', 'Jannatul Eva', '01535868893', '18201070','Stuck'),
('16101015', 'Anika Anu', '01535868894', '18201063','Delivering'),
('16101016', 'Sadia Sultana', '01535868895', '18201066','On the way'),
('16101017', 'Tumpa Saha', '01535868896', '18201064','Done'),
('16101018', 'Mahbuba Laka', '01535868897', '18201061','Done'),
('16101019', 'Shimin Afroz', '01535868898', '18201068','Done'),
('16101020', 'Homaira Adiba', '01535868899', '18201069','Done');

create table Clients(
  Client_ID varchar (8),
  Client_Name varchar (20),
  Client_PhoneNo varchar (15),
  Client_Address varchar(100),
  Product_ID varchar (8),
  Primary key (Client_ID) 
 );            

INSERT INTO clients (`Client_ID`, `Client_Name`, `Client_PhoneNo`, `Client_Address`, `Product_ID`) 
VALUES ('18201061', 'Sabbir hosen', '01312868890', 'Chadpur', '33'),
 ('18201062', 'Sizan Khan', '01312868891', 'Dhaka', '41'),
 ('18201063', 'Imran Nazir', '01312868892', 'Sirajganj', '53'),
 ('18201064', 'Mehrab Anin', '01312868893', 'Dhaka', '22'),
 ('18201065', 'Rifat Ahmed', '01312868894', 'Barishal', '12'),
 ('18201066', 'Sabbir Chowdhury', '01312868895', 'Jessore', '52'),
 ('18201067', 'Ashraful Haque', '01312868896', 'Dhaka', '32'),
 ('18201068', 'Shahriar Shafin', '01312868897', 'Dinajpur', '51'),
 ('18201069', 'Tahmid Sakib', '01312868898', 'Naogaon', '11'),
 ('18201070', 'Abdullah Amin', '01312868899', 'Dhaka', '42');

  
 create table Pay_Method(
Method_ID varchar (8),
Method_Name varchar (20),
primary key (Method_ID)
);

INSERT INTO pay_method (`Method_ID`, `Method_Name`) VALUES ('123', 'Cash_On_Delivery'),('456', 'Bkash'),('789', 'Cards');
 
 
 
create table Payments(
Payment_ID varchar (8), 
Client_ID varchar (8),
Price varchar (8),
Payment_Date varchar (10),
Method varchar (8),
primary key (Payment_ID),
foreign key (Method) references pay_method(Method_ID)
);

INSERT INTO payments (`Payment_ID`, `Client_ID`, `Price`, `Payment_Date`, `Method`)
VALUES ('101', '18201061', '250', '2020.09.15', '456'),
 ('102', '18201062', '120', '2020.09.17', '123'),
 ('103', '18201063', '90', '2020.09.18', '123'),
 ('104', '18201064', '110', '2020.09.21', '789'),
 ('105', '18201065', '50', '2020.09.23', '456'),
 ('106', '18201066', '80', '2020.09.24', '456'),
 ('107', '18201067', '170', '2020.09.25', '123'),
 ('108', '18201068', '40', '2020.09.27', '789'),
 ('109', '18201069', '160', '2020.09.28', '123'),
 ('110', '18201070', '180', '2020.09.30', '456');


