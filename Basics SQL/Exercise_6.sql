Karolina Biela, poniedziałek 11:15
Zadanie 6
1. Napisz polecenie które zwraca imię i nazwisko (jako
pojedynczą kolumnę – name), oraz informacje o adresie:
ulica, miasto, stan kod (jako pojedynczą kolumnę – address)
dla wszystkich dorosłych członków biblioteki
 2. Napisz polecenie które zwraca informację o użytkownikach
biblioteki o nr 250, 342, i 1675 (nr, imię i nazwisko członka
biblioteki) oraz informacje o zarezerwowanych książkach
(isbn, data)
1.
select (firstname+ ' ' + lastname) as name,(street+' '+city+' '+state+' '+zip) as address
from adult
inner join member
on adult.member_no=member.member_no

2.

select M.member_no,M.firstname,M.lastname,R.isbn,R.log_date
from  member as M
left outer join reservation as R
on M.member_no=R.member_no
where M.member_no='250' or M.member_no='342' or M.member_no='1675'


