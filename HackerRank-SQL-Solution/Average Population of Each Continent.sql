-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

select country.continent,floor(avg(city.population)) as avgcitypop
from city join
country on CITY.CountryCode=COUNTRY.Code
group by country.continent;