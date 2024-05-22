-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

select city.name
from
city inner join country on city.countrycode=country.code
where country.continent='Africa';