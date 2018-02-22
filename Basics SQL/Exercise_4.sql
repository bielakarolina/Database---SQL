Karolina Biela 
Poniedziałek 11:15
Zadanie domowe 4
1. Napisz polecenie, które wyświetla listę dzieci będących
członkami biblioteki. Interesuje nas imię, nazwisko, data
urodzenia dziecka i adres zamieszkania dziecka.
 2. Napisz polecenie, które wyświetla listę dzieci będących
członkami biblioteki. Interesuje nas imię, nazwisko, data
urodzenia dziecka, adres zamieszkania dziecka oraz imię i
nazwisko rodzica.

1.
select firstname, lastname, birth_date, (street+', '+city+','+state) as address
from member
right join juvenile
on member.member_no=juvenile.member_no
left join adult
on juvenile.adult_member_no=adult.member_no

2.

select M.firstname, M.lastname, P.firstname as [Parent's firstname], P.lastname as [Parent's lastname], J.birth_date,(A.street+','+A.city+','+A.zip+' '+A.state)as Address
from juvenile as J
inner join member as M
on M.member_no = J.member_no
inner join adult as A
on J.adult_member_no = A.member_no
inner join member as P
on P.member_no = J.adult_member_no



