SELECT 
	Age,
    Gender,
    count(*) as student_count
 FROM student_depression_db.`student depression dataset`
 where Profession = 'student'
 group by Age, Gender
 order by Age, Gender;
 
# creating student age distribution table [for Power BI]
create table student_age_distribution(
	SELECT 
	Age,
    Gender,
    count(*) as student_count
 FROM student_depression_db.`student depression dataset`
 where Profession = 'student'
 group by Age, Gender
 order by Age, Gender);
 
delete from `student depression dataset`
where Profession !='Student';

delete from `student depression dataset`
where city in ('3.0', 'Bhavna', 'City', 'Gaurav', 'Harsh', 'Harsha', 'Kibara', 'Less Delhi',
 'Less than 5 Kalyan', 'M.Com', 'M.Tech', 'ME', 'Mihir', 'Mira', 'Nalini', 'Nalyan', 'Nandini', 'Rashi', 'Reyansh', 'Saanvi', 'Vaanya');

delete from `student depression dataset`
where city in ('Khaziabad');

select 
	City,
    count(*) as student_each_city
from `student depression dataset`
group by city 
order by city;

select 
	avg(CGPA) as avg_CGPA_student
from `student depression dataset`;

select distinct
	avg(CGPA) over(partition by Gender order by City ) as AVG_CGPA,
    Gender,
    city
from `student depression dataset`
order by City;
	
select *
from `student depression dataset`
where `Work Pressure`!=0;

delete from `student depression dataset`
where `Work Pressure`!=0;

select 
    avg(`Sleep Duration`) as avg_sleep_duration 
from `student depression dataset`;

select 
	`Academic Pressure`,
    `Work Pressure`,
    avg(`Sleep Duration`) as avg_sleep_duration 
from `student depression dataset`
group by `Academic Pressure`,`Work Pressure`;

select * 
from `student depression dataset`
where `Academic Pressure`=0;

select count(*)
from `student depression dataset`;


