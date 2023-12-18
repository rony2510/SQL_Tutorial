-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

select count(city)-count(distinct city) from station;