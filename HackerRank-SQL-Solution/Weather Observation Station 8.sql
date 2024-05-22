-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true

select distinct city from station
where lower(substring(city,length(city),1)) in ('a','e','i','o','u')
and lower(substring(city,1,1)) in ('a','e','i','o','u');