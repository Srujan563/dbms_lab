-- 1.For a certain event only students who belong to team R or are females are allowed to participate. Find the list of students eligible(Union)
  select name from students where team='R' union select name from students where gender='F';

-- 2.Display count of students of students in each team (group by)
  select team,count(name) as students from students group by team;

-- 3.Display the average maths score of boys from each team .(group by)
  select avg(math) ,team from students where gender='M' group by team;

-- 4.Display data in the following format using group by order by
  select * from students group by gender,team order by team;

-- 5.Use the group by followed by order by followed by limit to show 'team' and 'avg(sci)' columns of the top two teams with highest average in science 
  select avg(sci) ,team from students group by team order by avg(sci) desc  limit 2;