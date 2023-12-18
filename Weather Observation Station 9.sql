-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true

select distinct city from station
where NOT lower(substring(city,1,1)) in ('a','e','i','o','u');