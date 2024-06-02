create table Customer (
Id INT primary key,
FirstName VARCHAR(50) not null,
LastName VARCHAR(50) not null,
PhoneNumber VARCHAR(15),
Email VARCHAR(100),
DOB DATE
);

create table Worker(
Id INT primary key,
FirstName VARCHAR(50) not null,
LastName VARCHAR(50) not null,
PhoneNumber VARCHAR(15),
Email VARCHAR(100),
DOB DATE
);

create table Appointment (
Id INT primary key,
CustomerID INT references Customer(Id),
WorkerID INT references Worker(Id),
ServiceID INT references Service(Id),
AppointmentDate TIMESTAMP not null,
Notes text
);

create table Service(
Id INT primary key,
ServiceName VARCHAR(100) not null,
DurationMinutes INT not null,
Price DECIMAL(10,2) not null
);

create table Payment(
Id INT primary key,
AppointmentId INT references Appointment(Id),
PaymentDate TIMESTAMP not null,
Amount DECIMAL(10,2) not null,
PaymentMethod VARCHAR(50)
);

create table AppUser(
Id INT primary key,
WorkerId INT references Worker(Id),
CustomerId INT references Customer(Id),
Username VARCHAR(50) not null,
UserPassword VARCHAR(255) not null,
UserRole VARCHAR(50) not null
);

