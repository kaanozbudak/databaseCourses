# this is a comment line .. created by kaanozbudak
create database if not exists bank_database;
#first we need to  create our database to put our tables
# run it after that keep continue
# create tables like this and run it every single time for every single table.
create table IF NOT EXISTS BANK(
				    Bank_ID int not null auto_increment primary key, 
                    Bank_Details varchar(100));
# run it after that keep continue
create table if not exists Adresses(
					Address_ID int not null primary key,
					Line_1 varchar(50),
                    Line_2 varchar(50),
                    Town_city varchar(20),
					Zipcode int(5),
					State_province varchar(20),
					Country varchar(20),
                    Other_details varchar(100));
 # run it after that keep continue                   
create table if not exists Ref_Branch_Type(
					Branch_Type_Code int primary key not null auto_increment,
                    Branch_Type_Description varchar(100));
# run it after that keep continue
create table if not exists Branches(
					Branches_ID int not null auto_increment primary key,
                    Address_ID int,
                    Bank_ID int,
                    Branch_Type_Code int,
					Branch_Details varchar(100),
                    FOREIGN KEY (Bank_ID) REFERENCES BANK(Bank_ID),
                    FOREIGN KEY (Address_ID) REFERENCES adresses(Address_ID),
					FOREIGN KEY (Branch_Type_Code) REFERENCES ref_branch_type(Branch_Type_Code));
# run it after that keep continue
create table if not exists Customers(
					Customer_ID int not null auto_increment primary key,
                    Address_ID int,
                    Branch_ID int,
                    Gender varchar(10),
                    Personel_Details varchar(100),
					Contact_Details varchar(50),
					FOREIGN KEY (Address_ID) REFERENCES adresses(Address_ID),
                    FOREIGN KEY (Branch_ID) REFERENCES branches(Branches_ID));
# run it after that keep continue
create table if not exists Ref_Account_Types(
					Account_Type_Code int primary key not null auto_increment,
                    Account_Type_Description varchar(100));
# run it after that keep continue
create table  if not exists Dim_Transaction_Type(
					Transaction_Type_Code int primary key not null auto_increment,
                    Transaction_Type_Description varchar(100));
# run it after that keep continue
create table if not exists Accounts(
					Account_Number int not null auto_increment primary key,
                    Account_Number_Customer_ID int,
                    Account_Status_Code int,
					Account_Type_Code int,
                    Current_Balance int,
                    Other_Details varchar(100),	
					FOREIGN KEY (Account_Number_Customer_ID) REFERENCES customers(Customer_ID),
					FOREIGN KEY (Account_Type_Code) REFERENCES Ref_Account_Types(Account_Type_Code));
# run it after that keep continue
create table if not exists Transactions(
					Transaction_ID int primary key not null auto_increment,
                    Account_Number int,
                    Merchant_ID int,
                    Transaction_Type_Code int,
                    Transaction_Date_Time varchar(20),
                    Transaction_Amount float,
					Other_Details varchar(100),
					FOREIGN KEY (Account_Number) REFERENCES accounts(Account_Number),
					FOREIGN KEY (Transaction_Type_Code) REFERENCES Dim_Transaction_Type(Transaction_Type_Code));
# run it after that keep continue
show tables;
#if you want you can insert something to your tables
# you can find every query, every query type from w3schools. you can google it.  I'm not sure, may be i had mistake on it, forgive me. 
# run every select query single request and keep continue.
# if you have question, if you have an advise please send e mail to me, kaanozbudak@hotmail.com , thanks for hard working
# sources: https://www.w3schools.com/sql/default.asp
# created by kaanozbudak, computer engineer 3. year student.
# please give star my github projects. 
# https://github.com/kaanozbudak
# https://www.linkedin.com/in/kaanozbudak/ 
		



