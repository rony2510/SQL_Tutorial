-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

select city,length(city) as citylen from station order by citylen asc, city limit 1;

select city,length(city) as citylen from station order by citylen desc,city limit 1;