-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true

select distinct city from station
where NOT lower(substring(city,length(city),1)) in ('a','e','i','o','u');