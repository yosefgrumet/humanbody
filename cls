[1mdiff --git a/2 sample data.sql b/2 sample data.sql[m
[1mindex ae571e1..b2af983 100644[m
[1m--- a/2 sample data.sql[m	
[1m+++ b/2 sample data.sql[m	
[36m@@ -4,4 +4,8 @@[m [munion select 'ears', 2[m
 union select 'nose', 1[m
 union select 'mouth', 2[m
 union select 'teeth', 32[m
[31m-union select 'toungue', 1[m
\ No newline at end of file[m
[32m+[m[32munion select 'toungue', 1[m
[32m+[m
[32m+[m[32minsert body(bodypart, num)[m
[32m+[m[32mselect 'brain', 1[m
[32m+[m[32mghkjfm[m
\ No newline at end of file[m
[1mdiff --git a/SQLQuery_1.sql b/SQLQuery_1.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..e980b40[m
[1m--- /dev/null[m
[1m+++ b/SQLQuery_1.sql[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m--1[m
[32m+[m[32m--modify table add columns[m
[32m+[m[32mcreate table dbo.body(id int not null identity primary key, bodypart varchar(100) not null, num int not null)[m
[32m+[m
[32m+[m[32m--and add sample data file[m
[32m+[m[32minsert body(bodypart, num)[m
[32m+[m[32mselect 'eyes', 2[m
[32m+[m[32munion select 'ears', 2[m
[32m+[m[32munion select 'nose', 1[m
[32m+[m[32munion select 'mouth', 2[m
[32m+[m[32munion select 'teeth', 32[m
[32m+[m
[32m+[m[32m--2 stage both[m
[32m+[m
[32m+[m[32m--3 unstage sample data[m
[32m+[m
[32m+[m[32m--4 add a row to sample data[m
[32m+[m[32minsert body(bodypart, num)[m
[32m+[m[32mselect 'toungue', 1[m
[32m+[m
[32m+[m[32m--5 stage and commit both files[m
[32m+[m[32m--6 add some sample data[m
[32m+[m[32minsert body(bodypart, num)[m
[32m+[m[32mselect 'brain', 1[m
[32m+[m[32m--7 make an unwanted change, save and close file, attempt to get your lastest change[m
[32m+[m[32m-- if you can't then go back to staged version[m
[32m+[m[32m--8 go back to 6, make an unwanted change, stage, save and close file, and then go back to the committed version[m
[32m+[m
[32m+[m[32m--9 add a new file for queries, save, make unwanted change, save, try to go back to previous version[m
[32m+[m
[32m+[m[32m--10 delete file by mistake, stage changes, get back deleted file from repo[m
[32m+[m
[32m+[m[32m--11 add some more sample data into a new file, by mistake add personal info in a comment, commit, remove personal info from repo but don't lose your new sample data[m
[32m+[m[32minsert body(bodypart, num)[m
[32m+[m[32mselect 'hair', 4000[m
[32m+[m
