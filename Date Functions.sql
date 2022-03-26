# Current Date & Time , Time stamp - both current date & time
select current_date() as date_;
select current_time() as time_;
select current_timestamp() as stmp;

# Now   - same as current_timestamp
select now() as nw;

# Date & Time   - 'yyyy-mm-dd hh:mm:sec'
select ('2022-02-05 13:08:33') as dt;
select date ('2022-02-05 13:08:33') as dt;
select time ('2022-02-05 13:08:33') as dt;

# Date Add  = adding to date 
select date_add('2021-01-05' , interval 5 day ) as date_add_;
select date_add('2021-01-05',interval  -5 day) as date_add_;
select date_add('2021-01-05',interval  5 month) as date_add_;
select date_add('2021-01-05',interval  -3 Month) as date_add_;
select date_add('2021-01-05',interval  3 year) as date_add_;
select date_add('2021-01-05',interval  -4 year) as date_add_;
select date_add('2021-01-05',interval  10 Minute) as date_add_;
select date_add('2021-01-05 00:04:30',interval  15 Minute) as date_add_;
select date_add('2021-01-05 04:30:30',interval  '2:45' hour_Minute) as date_add_;
select date_add('2021-01-05 00:30:00',interval  '-2:45' hour_Minute) as date_add_;
select date_add('2021-01-05 04:30:30',interval  '2:45' Minute_second) as date_add_;

# Date Format
select date_format('2021-11-27', '%d-%m-%y') as dt;     # 27-11-21
select date_format('2021-11-27', '%d-%m-%Y') as dt;     # 27-11-2021  Y
select date_format('2021-11-27', '%D-%m-%Y') as dt;     # 27th-11-2021
select date_format('2021-11-27', '%D-%M-%Y') as dt;     # 27th-November-2021
select date_format('2021-11-27', '%D %b %Y') as dt;     # 27th Nov 2021

select date_format('2021-11-27 16:35:21', '%d-%m-%Y %h:%i' ) as dt;     # h -12 hr clock , H -  24hr clock
select date_format('2021-11-27 16:35:21', '%d-%m-%Y %H:%i' ) as dt;    # h -12 hr clock , H -  24hr clock
select date_format('2021-11-27 16:35:21', '%d-%m-%Y %H:%i:%s %p' ) as dt;  # hr - min - sec am/pm
select date_format('2021-11-27 09:35:21', '%d-%m-%Y %H:%i:%s %p' ) as dt;   # h or H 

# DateDiff - always returns the no of days
select DateDiff('2021-04-15','2021-04-12') as dtdf;

# Timestampdiff
select timestampdiff(hour, '2022-02-04', now()) as tmdf;
select timestampdiff(Month, '2022-05-04', now()) as tmdf;
select timestampdiff(year, '2012-02-04', now()) as tmdf;

# Extracting Year / Month / Day / Week
select year(now()) as yr;
select month(now()) as mnth;
select monthname(now()) as mnth;
select day(now()) as d;
select dayofyear(now()) as d;
select dayofweek(now()) as d;
select week(now()) as w;