Ćwiczenia końcowe agregaty
Karolina Biela poniedziałek 11:15
1.1
select orderid, SUM(unitprice*quantity*(1-isnull(discount,0))) as total
from [Order Details]
group by OrderID
order by total DESC
1.2
Select TOP 10 orderid, sum(quantity*unitprice*(1-isnull(discount,0))) as [wartosc sprzedazy]
from [order details]
group by orderid
order by [wartosc sprzedazy] desc
1.3
Select TOP 10 WITH TIES orderid, sum(quantity*unitprice*(1-isnull(discount,0))) as [wartosc sprzedazy]
from [order details]
group by orderid
order by [wartosc sprzedazy] desc
2.1
select ProductID, SUM(Quantity) as suma
from [Order Details]
where ProductID<3
group by productid
2.2
select ProductID, SUM(Quantity) as suma
from [Order Details]
group by productid
2.3
select OrderID, SUM(UnitPrice*Quantity) as total_price
from [Order Details]
group by OrderID
having SUM(Quantity)>250
3.1
select ProductID,OrderID, SUM(Quantity) as total_quantity
from [Order Details]
group by ProductID,OrderID
WITH ROLLUP
order by ProductID, OrderID
3.2
select ProductID,OrderID, SUM(Quantity) as total_quantity
from [Order Details]
where ProductID=50
group by ProductID,OrderID
WITH ROLLUP
order by ProductID, OrderID
3.3
NULL w kolumnie OrderID oznacza „wszystko” czyli ilość zamówień produktu o danym identyfikatorze, czyli zwyczajną sumę.
Produkt o danym ID mógł zostać wycofany ze sprzedaży, dlatego zamówienia tego produktu zostały usunięte z bazy.
3.4
select ProductID,GROUPING(ProductID) as Grupowanie_po_productid,
OrderID,GROUPING(OrderID) as Grupowanie_po_orderid, SUM(Quantity) as total_quantity
from [Order Details]
group by ProductID,OrderID
WITH CUBE
order by ProductID, OrderID
3.5
Gdy w kolumnie grupowanie_po_productid pokaże się 0 to znaczy że to jest prawda,gdy jest 1-fałsz, gdy w kolumnie grupowanie_po_orderid będzie 0 to znaczy że jest podsumowanie według orderid gdy jest 1 to znaczy że nie.
