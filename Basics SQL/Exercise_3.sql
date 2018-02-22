Karolina Biela
Poniedziałek 11:15
Zadanie domowe 3

1. Wybierz nazwy i ceny produktów o cenie jednostkowej
pomiędzy 20 a 30, dla każdego produktu podaj dane
adresowe dostawcy
 2. Wybierz nazwy produktów oraz informacje o stanie
magazynu dla produktów dostarczanych przez firmę ‘Tokyo
Traders’
 3. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia
w 1997 roku, jeśli tak to pokaż ich dane adresowe (!)
 4. Wybierz nazwy i numery telefonów dostawców,
dostarczających produkty, których aktualnie nie ma w
magazynie

1.
select productname, unitprice,Address as address_of_supplier
from products 
inner join Suppliers
on products.SupplierID=Suppliers.SupplierID
where UnitPrice between 20 and 30 

2.
select productname, UnitsInStock,companyname
from Products
inner join Suppliers
on products.SupplierID=Suppliers.SupplierID
where CompanyName='Tokyo Traders'

3.
select customers.CustomerID, Address
from Customers
left outer join Orders
on Orders.customerid = Customers.CustomerID and datepart(year,Orders.OrderDate) = 1997
where Orders.OrderDate IS NULL


4.
select companyname,phone,unitsinstock
from Suppliers
inner join Products
on products.SupplierID=Suppliers.SupplierID
where UnitsInStock=0

