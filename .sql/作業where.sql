select * from customer
WHERE first_name='Jamie'

select * from customer
WHERE first_name='Jamie'AND last_name='Rice'

select * from customer
WHERE first_name='Adam'OR last_name='Rodriquez'

select * from customer
WHERE first_name IN('Ann','Anne','Annie')

select * from customer
WHERE first_name LIKE('Ann%')

select * from customer
WHERE first_name LIKE('A%') AND LENGTH(first_name) BETWEEN 3 AND 5;

select * from customer
WHERE first_name LIKE('Bra%') AND NOT last_name='Motley';