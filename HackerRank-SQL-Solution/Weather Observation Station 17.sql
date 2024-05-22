-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true

select round(long_w,4) as answer
from station
where lat_n=(select min(lat_n) from station where lat_n>38.7780);