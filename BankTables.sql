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
eName VARCHAR(50) not null,
eAddress VARCHAR(30) not null,
eSSN CHAR(9),
eSalaries money null

primary key (eSSN),
foreign key (eWBname) references Branches(brName)

)

--Table: Customer
create table Customers(
cName varchar(50) not null,
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
lInterestSchedule decimal(4,2) not null,

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

create table Users(

uName varchar(50) not null,
uPassword varchar(50) not null,
uType char(1) not null

primary key (uName, uType)
)