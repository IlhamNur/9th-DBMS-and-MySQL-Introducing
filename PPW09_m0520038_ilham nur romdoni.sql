-- 1 --
create database Perusahaan;

-- 2 --
use Perusahaan;

create table Pegawai (
	id int not null auto_increment,
	nama varchar(100),
	no_telepon varchar(15),
	email varchar(100),
	nik varchar(25),
	gender int,
	primary key (id)
);

-- 3 --
insert into pegawai (nama, no_telepon, email, nik, gender) 
values
	("Ghea Youbi","086912123456", "ghe4y@gmail.com", "3525015201880002", 0),
	("Adi Pranama", "081299901023", "adi_pra@gmail.com", "3525016005650004", 1),
	("Aulia Nisa", "083523121256", "auni@gmail.com", "3525016005650004", 0),
	("Islam Mipitan", "089012333311", "ismi@yahoo.com", "3525017006620060", 0),
	("Muhammad Isa", "082312017783", "m_isa@gmail.com", "3525016401830001", 1);

-- 4 --
delete from pegawai 
where id in (2,3);

-- 5 --
alter table pegawai 
add status varchar(25);

update pegawai 
set status = 'lajang'
where id <= 3;

update pegawai
set status = 'menikah'
where id >= 4;