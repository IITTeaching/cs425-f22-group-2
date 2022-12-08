insert into Bank (bankName, bankAddress)	
	values ('Illinois Bank', '123 State St')
insert into Bank (bankName, bankAddress)	
	values ('Virginia Bank', '448 Cherry St')

insert into Branches (brBank, brName, brAddress)
	values ('Illinois Bank','Chicago', '456 State Ct')
insert into Branches (brBank, brName, brAddress)
	values ('Virginia Bank','Fairfax', '448 Cherry St')

insert into Employees(eName, eAddress, eType, eWBName, eSSN, eSalaries)
	values ('Evan Farrington', '789 Center Ln', 'Manager', 'Chicago', '776584762', 150000.00)
insert into Employees(eName, eAddress, eType, eWBName, eSSN, eSalaries)
	values ('Lana Lexington', '553 Inner Ct', 'LS', 'Chicago', '857609321', 90000.00)
insert into Employees(eName, eAddress, eType, eWBName, eSSN, eSalaries)
	values ('Barry Bigsy', '429 Longshot Dr', 'Teller', 'Chicago', '587432098', 80000.00)   /*Make another employee and customer for another branch*/
insert into Employees(eName, eAddress, eType, eWBName, eSSN, eSalaries)
	values ('Kevin Chesney', '311 Work Pl', 'Teller', 'Fairfax', '945743289', 70000.00)

insert into Customers(cName, cAddress, cHomeBranch)
	values ('Hannah Huang', '000 Somewhere Dr', 'Chicago')
insert into Customers(cName, cAddress, cHomeBranch)
	values ('Bella Wu', '471 Someplace Ln', 'Fairfax')

insert into Loans (lHolder, lAmount, lRuntime, LInterestSchedule)
	values ('Hannah Huang', 500000.00, 360, 4.2) 

insert into AccountTypes(atName, atInterestRate, atNegBalance, atOverdraftFee, atMonthlyFee)
	values('Checking', 5, 0, 0, 0)
insert into AccountTypes(atName, atInterestRate, atNegBalance, atOverdraftFee, atMonthlyFee)
	values('Savings', 3, 0, 0, 50)
insert into AccountTypes(atName, atInterestRate, atNegBalance, atOverdraftFee, atMonthlyFee)
	values('Money Market', 1, 0, 25, 0)
insert into AccountTypes(atName, atInterestRate, atNegBalance, atOverdraftFee, atMonthlyFee)
	values('CD', 8, 0, 0, 0)

	-- make a negative balance account type

insert into Accounts (aOwner, aNumber, aBalance, aType)   
	values ('Hannah Huang', '589736293', 50.00, 'Checking')
insert into Accounts (aOwner, aNumber, aBalance, aType)   
	values ('Bella Wu', '444521776', 150.00, 'Savings') 

insert into Transactions (tAccountNumber, tType, tAmount, tDescription)
	values ('589736293','Deposit', 100.00, 'Birthday money') 

insert into Users(uName, uPassword, uType)
	values ('Barry Bigsy', 'Password1', 't')
insert into Users(uName, uPassword, uType)
	values ('Lana Lexington', 'Password2', 'l')
insert into Users(uName, uPassword, uType)
	values ('Evan Farrington', 'Password3', 'm')
insert into Users(uName, uPassword, uType)
	values ('Hannah Huang', 'Password4', 'c')

insert into Users(uName, uPassword, uType)
	values ('Kevin Chesney', 'Password5', 't')
insert into Users(uName, uPassword, uType)
	values ('Bella Wu', 'Password6', 'c')

	select * from Accounts
