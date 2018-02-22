Karolina Biela, poniedziałek 11:15

Zadanie 7

1. Dla każdej kategorii produktu (nazwa), podaj łączną liczbę
zamówionych przez klienta jednostek.
2. Dla każdego zamówienia podaj łączną liczbę zamówionych jednostek
oraz nazwę klienta.
3. Zmodyfikuj poprzedni przykład, aby pokazać tylko takie zamówienia,
dla których łączna liczba jednostek jest większa niż 250.
4. Dla każdego klienta (nazwa) podaj nazwy towarów, które zamówił
5. Dla każdego klienta (nazwa) podaj wartość poszczególnych
zamówień. Gdy klient nic nie zamówił też powinna pojawić się
informacja.
6. Podaj czytelników (imię, nazwisko), którzy nigdy nie pożyczyli żadnej
książki.


1.
select C.CategoryName, SUM(P.UnitsOnOrder) as 'suma'
from Products as P
inner join Categories as C
on C.CategoryID = P.CategoryID
inner join [Order Details] as OD
on P.ProductID = OD.ProductID
inner join Orders as O
on O.OrderID = OD.OrderID
inner join Customers as Cu
on Cu.CustomerID = O.CustomerID
group by C.CategoryName

2.
select C.CompanyName,OD.orderid,sum(P.UnitsonOrder) as SUM_
from [Order Details] as OD
inner join orders as O
on OD.OrderID=O.OrderID
inner join customers as C
on O.CustomerID=C.CustomerID
inner join Products as P
on OD.ProductID=P.ProductID
group by C.CompanyName,OD.orderid

3.
select C.CompanyName,OD.orderid,sum(P.UnitsonOrder) as SUM_
from [Order Details] as OD
inner join orders as O
on OD.OrderID=O.OrderID
inner join customers as C
on O.CustomerID=C.CustomerID
inner join Products as P
on OD.ProductID=P.ProductID
group by C.CompanyName,OD.orderid
having sum(P.UnitsonOrder)>250

4.
select C.CompanyName,P.ProductName
from [Order Details] as OD
inner join Orders as O
on OD.OrderID=O.OrderID
inner join Customers as C
on C.CustomerID=O.CustomerID
inner join Products as P
on OD.ProductID=P.ProductID




5.
select C.CompanyName,OD.OrderID,SUM(Quantity*UnitPrice*(1-Discount)) as Value_of_Order
from [Order Details] as OD
inner join Orders as O
on OD.OrderID=O.OrderID
right outer join  Customers as C
on C.CustomerID=O.CustomerID
group by C.CompanyName,OD.OrderID

6.

select firstname,lastname
from member
left outer join loan
on member.member_no=loan.member_no
where loan.member_no is NULL
union
select firstname,lastname
from member
left outer join loanhist
on member.member_no=loanhist.member_no
where loanhist.member_no is NULL

