-- 1.Design a table marsk_sem1.
--  a.It must contain all marks as seen in the student table.
--  b.One way to go about this is to create a copy of the student table and drop columns.
--  c.Make roll number the primary key
 
  create table marsk_sem1 as select rollno ,math ,sci ,eng,social,sports from student  order by rollno;
  alter table marsk_sem1 add primary key (rollno);
--  2.Design a table faculty
--   a.Add columns and rows with given constraints
  create table faculty(name varchar(20), fid char(4) not null primary key, subject varchar(20));
  insert into faculty values ("kakashi", "4003", "math");
  insert into faculty values ("guy", "5002", "sports");
  insert into faculty values ("kurenai", "5038", "eng");
--   3.Design a table sem1
--    a.Add columns and rows with given constraints
--    b.Note - if the “mul” doesn't show up with you run “describe sem1;” then add a few rowsand then alter the table
  create table sem1(subj_id char(4) not null primary key, subject varchar(20), fid char(4), cap int, campus int, foreign key (fid) references faculty(fid), foreign key (campus) references campus(cid));
--   4.Update campus table
--    a.Make cid primary key
  alter table campus add primary key (cid);
--  5.Update student table
--   a.Drop not required columns (as shown below)
--   b.Add fk to rollno to sem1 rollno
--   c.Add cid
--   d.Add fk to cid to campus cid  
  alter table student drop column math,drop column sci,drop column eng,drop column social,drop column sports,add cid int;
  alter table student add foreign key (rollno) references marks_sem1(rollno);
  alter table student add cid int;
  alter table student add foreign key (cid) references campus(cid);
  alter table student alter dob set default '2001-01-01';
  alter table student alter gender set default 'M';
  alter table student alter team set default 'R';
