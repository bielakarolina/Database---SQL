Karolina Biela, poniedziałek 11:15
1. Napisz polecenie, które wyświetla adresy członków
biblioteki, którzy mają dzieci urodzone przed 1 stycznia
1996
 2. Napisz polecenie, które wyświetla adresy członków
biblioteki, którzy mają dzieci urodzone przed 1 stycznia
1996. Interesują nas tylko adresy takich członków biblioteki,
którzy aktualnie nie przetrzymują książek.

Zadanie 5

1.
select firstname,lastname,street,city,state
from adult
inner join juvenile
on adult.member_no=juvenile.adult_member_no
inner join member
on adult.member_no=member.member_no
where birth_date<'1996-01-01'
group by firstname,lastname,street,city,state

2.
select firstname,lastname,street,city,state
from adult
inner join juvenile
on adult.member_no=juvenile.adult_member_no
inner join member
on adult.member_no=member.member_no
inner join loanhist
on adult.member_no=loanhist.member_no
where birth_date<'1996-01-01' and due_date<in_date
group by firstname,lastname,street,city,state


