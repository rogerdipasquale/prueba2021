create table a (
	  id int not null,
	  nombre1 varchar(50),
	  nombre2 varchar(50)
);

create table b (
	  id int not null,
	  nombre1 varchar(50),
	  nombre2 varchar(50),
	  id_original int not null
);

alter table b
  add constraint fk_id 
  foreign key (id_original) references a (id);


