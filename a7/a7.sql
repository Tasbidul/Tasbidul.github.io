select * from actors;
select * from movies_actors;
select * from movies;
select * from directors;
select * from movie_revenues;

Select count(*) from actors
where date_of_birth > '1970-1-1'

SELECT MIN(domestic_takings) AS min_domestic_takings, MAX(domestic_takings) AS max_domestic_takings 
FROM movie_revenues;

select sum(movie_length) from movies
where age_certificate = '15'

select count(*) from directors
where nationality = 'Japanese'

select avg(movie_length) from movies
where movie_lang = 'Chinese'

select nationality, count(*) as nationalities from directors
group by nationality
order by nationality

select age_certificate, movie_lang, sum(movie_length) as sum_of_movie_length from movies
group by movie_lang, age_certificate
order by age_certificate

select movie_lang, sum(movie_length) from movies
group by movie_lang
having sum(movie_length) > 500

select distinct gender, first_name, last_name from actors
group by first_name, last_name

select first_name, last_name,date_of_birth,gender  from actors 
where date_of_birth = (
	select MIN(date_of_birth) from actors
	WHERE gender='F'
)
or date_of_birth = (
	select MIN(date_of_birth) from actors
	WHERE gender='M'
)

select age_certificate, movie_name, movie_length from movies m1
where movie_length > (select avg(movie_length) from movies m2 where m2.age_certificate=m1.age_certificate);
