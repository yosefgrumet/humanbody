-- YG please populate sample data with planets to match schema
insert body(bodypart, num)
select 'eyes', 2
union select 'ears', 2
union select 'nose', 1
union select 'moth', 2 --YG was this intentional, ..
union select 'teeth', 32
union select 'toungue', 1

insert body(bodypart)
select 'hair'
