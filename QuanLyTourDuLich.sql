create database quanlytourdulich;
use quanlytourdulich;

create table thanhpho(
city_id int auto_increment primary key,
city_name varchar(20) not null
);

create table diemdendulich(
diemden_Id int auto_increment primary key,
diemden_Name varchar(20) not null,
diemden_mota varchar(200),
diemden_giatb double not null,
city_id int,
FOREIGN KEY (city_id) REFERENCES thanhpho(city_id)
);

create table khachhangdattour(
khachhang_id int auto_increment primary key,
khachhang_name varchar(20) not null,
khachhang_cccd varchar(13) unique,
khachhang_namsinh year,
city_id int,
FOREIGN KEY (city_id) REFERENCES thanhpho(city_id)
);

create table loaitour(
loaitour_id int auto_increment primary key,
loaitour_maTour varchar(10) not null,
loaitour_name varchar(20) not null
);

create table tour(
tour_id int auto_increment primary key,
loaitour_id int,
tour_gia double not null,
tour_ngaybd date not null,
tour_ngaykt date not null,
FOREIGN KEY (loaitour_id) REFERENCES loaitour(loaitour_id),
CONSTRAINT check_dates CHECK (tour_ngaykt > tour_ngaybd)
); 

create table hddattour(
hddattour_id int auto_increment primary key,
tour_id int,
khachhang_id int,
hddattour_status ENUM('đã đặt', 'đã hoàn thành', 'đã hủy') DEFAULT 'đã đặt',
FOREIGN KEY (tour_id) REFERENCES tour(tour_id),
FOREIGN KEY (khachhang_id) REFERENCES khachhangdattour(khachhang_id)
);

