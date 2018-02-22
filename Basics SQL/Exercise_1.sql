1.1  select title_no, title
from title 


//////////////////////////////////////////////////////////////////

1.2 select title
from title
where title_no=10 

//////////////////////////////////////////////////////////////////
1.3 select member_no, fine_assessed
from loanhist
where fine_assessed between 8 and 9


/////////////////////////////////////////////////////////////////

1.4 select title, author
from title
where author like 'Charles Dickens' or author like 'Jane Austen'


///////////////////////////////////////////////////////////////////

1.5 select title, title_no
from title
where title like '%adventures%'


///////////////////////////////////////////////////////////////////

1.6 select member_no, fine_assessed,fine_paid
from loanhist
where fine_assessed >0 and fine_assessed is not null 
and fine_assessed> ISNULL(fine_waived,0)+ISNULL(fine_paid,0)


////////////////////////////////////////////////////////////////////

1.7
select distinct  city, state
from adult


/////////////////////////////////////////////////////////////////

2.1
select title
from title
order by title



//////////////////////////////////////////////////////////////////
2.2

select member_no, isbn, fine_assessed,
2*fine_assessed as 'double fine'
from loanhist
where fine_assessed>0 and fine_assessed is not null

////////////////////////////////////////////////////////////////////
2.3.a

select firstname + ' ' + middleinitial + ' ' + lastname as 'email_name'
from member
where lastname like 'Anderson' 
//////////////////////////////////////////////////////////////////
2.3.b

select lower(firstname) + lower(middleinitial) + lower(substring(lastname, 1,2)) as 'email_name'
from member
where lastname like 'Anderson'

/////////////////////////////////////////////////////////////////////

2.4


select 'The title is:'+ title + ', title number' + cast(title_no as varchar)
as ' Title and number ' 
from title 
