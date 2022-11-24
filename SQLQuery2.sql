--Table: Bank
Create table Bank(
bankName VARCHAR(30) not null,
bankAddress VARCHAR(30) not null

primary key(bankName)
)

--Table: Branch
Create table Branches(
brBank VARCHAR(30),
brName VARCHAR(30),
brAddress VARCHAR(30) not null,

primary key (brName),
foreign key (brBank) references Bank(bankName)
)

--Table: Employee
Create table Employees(
eType VARCHAR(10) not null,
eWBName VARCHAR(30) not null,
eName VARCHAR(30) not null,
eAddress VARCHAR(30) not null,
eSSN CHAR(9),
eSalaries money null

primary key (eSSN),
foreign key (eWBname) references Branches(brName)

)

--Table: Customer
create table Customers(
cName varchar(50),
cAddress varchar(30) not null,
cHomeBranch varchar(30) not null

primary key (cName),
foreign key (cHomeBranch) references Branches(brName)

)

--Table: Loans
create table Loans(
lHolder varchar(50) not null,
lAmount money null,
lRuntime int not null,
LInterestSchedule decimal(4,2) not null,

foreign key (lHolder) references Customers(cName)

)

--Table: AccountTypes
create table AccountTypes(
atName varchar(30) not null,
atInterestRate int,
atNegBalance money, 
atOverdraftFee money,
atMonthlyFee money

primary key (atName)
)

--Table: Accounts
create table Accounts(
aOwner varchar(50) not null,
aNumber varchar(30) not null,
aBalance money null,
aType varchar(30) 

primary key (aNumber),
foreign key (aOwner) references Customers(cName),
foreign key (aType) references AccountTypes(atName)

)

--Table: Transaction
create table Transactions(
tAccountNumber varchar(30),
tType varchar(10) not null,
tAmount money not null,
tDescription varchar(100) not null

foreign key (tAccountNumber) references Accounts(aNumber)
)

--insert values

insert into Bank (bankName, bankAddress)	
	values ('Illinois Bank', '123 State St')
insert into Branches (brBank, brName, brAddress)
	values ('Illinois Bank','Chicago', '456 State Ct')
insert into Employees(eName, eAddress, eType, eWBName, eSSN, eSalaries)
	values ('Evan Farrington', '789 Center Ln', 'Manager', 'Chicago', '776584762', 90000.00)   
insert into Customers(cName, cAddress, cHomeBranch)
	values ('Hannah Huang', '000', 'Chicago')
insert into Loans (lHolder, lAmount, lRuntime, LInterestSchedule)
	values ('Hannah Huang', 500000.00, 360, 4.2) 
insert into Accounts (aOwner, aNumber, aBalance, aType)   
	values ('Bella Wu', '589736293', 50.00, 'Checking') 
insert into AccountTypes (atName, atInterestRate, atNegBalance, atOverdraftFee, atMonthlyFee)
	values ('Checking', 5, 0, 0, 0) 
insert into Transactions (tAccountNumber, tType, tAmount, tDescription)
	values ('589736293','Deposit', 100.00, 'Birthday money')