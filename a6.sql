select * from actors;
select * from movies_actors;
select * from movies;
select * from directors;
select * from movie_revenues;

select count(*) from actors
union all
select count(*) from directors
union all
select count(*) from movies
union all
select count(*) from movie_revenues
union all
select count(*) from movies_actors

select movie_name, release_date from movies;
select first_name, last_name from directors
where nationality='American';
select first_name, last_name, gender, date_of_birth from actors
where gender='M' and date_of_birth > '1970-1-1';
select movie_name, movie_length, movie_lang, release_date, age_certificate, director_id from movies
where movie_lang='English' and movie_length > '90';
select movie_name, movie_lang from movies
where movie_lang='English' or movie_lang='Spanish' or movie_lang='Korean';
select first_name, last_name from actors
where last_name like 'M%' and date_of_birth between '1940-1-1' and '1969-12-31';
select first_name, last_name from directors
where nationality='British' or nationality='French' or nationality='German' and date_of_birth between '1950-1-1' and '1980-12-31';