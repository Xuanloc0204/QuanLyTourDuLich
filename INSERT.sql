use quanlytourdulich;

#Thêm 5 thành phố
INSERT INTO thanhpho (city_name) 
VALUES ('Hà Nội'),
       ('Đà Nẵng'),
       ('Hồ Chí Minh'),
       ('Huế'),
       ('Hạ Long');

#Thêm 5 bản ghi của điểm đến du lịch
INSERT INTO diemdendulich (diemden_Name, diemden_mota, diemden_giatb, city_id) 
VALUES 
('Vịnh Hạ Long', 'Di sản thiên nhiên thế giới nổi tiếng với cảnh quan tuyệt đẹp', 1500000, 5),
('Cầu Rồng', 'Cây cầu độc đáo với hình dáng con rồng, biểu tượng của Đà Nẵng', 200000, 2),
('Lăng Tự Đức', 'Lăng tẩm của vua Tự Đức thuộc triều Nguyễn', 500000, 4),
('Nhà thờ Đức Bà', 'Nhà thờ cổ kính nằm giữa trung tâm thành phố Hồ Chí Minh', 300000, 3),
('Hồ Hoàn Kiếm', 'Điểm đến văn hóa và lịch sử giữa lòng thủ đô Hà Nội', 0, 1);

#Thêm 10 khách hàng
INSERT INTO khachhangdattour (khachhang_name, khachhang_cccd, khachhang_namsinh, city_id) 
VALUES 
('Nguyễn Văn A', '1234567890123', 1990, 1),
('Trần Thị B', '2345678901234', 1985, 2),
('Lê Văn C', '3456789012345', 1992, 3),
('Phạm Thị D', '4567890123456', 1987, 4),
('Đỗ Văn E', '5678901234567', 1995, 5),
('Ngô Thị F', '6789012345678', 1998, 1),
('Vũ Văn G', '7890123456789', 1980, 2),
('Bùi Thị H', '8901234567890', 1993, 3),
('Phan Văn I', '9012345678901', 1986, 4),
('Hoàng Thị K', '0123456789012', 1999, 5);

#Thêm 2 loại tour
INSERT INTO loaitour (loaitour_maTour, loaitour_name) 
VALUES 
('LT001', 'Tour du lịch biển'),
('LT002', 'Tour du lịch văn hóa');

#Thêm 15 tour
INSERT INTO tour (loaitour_id, tour_gia, tour_ngaybd, tour_ngaykt) 
VALUES 
(1, 5000000, '2024-11-01', '2024-11-05'),
(1, 6000000, '2024-11-10', '2024-11-15'),
(1, 7000000, '2024-12-01', '2024-12-07'),
(2, 3000000, '2024-11-03', '2024-11-08'),
(2, 4500000, '2024-12-10', '2024-12-14'),
(1, 5200000, '2024-10-25', '2024-10-29'),
(1, 5500000, '2024-12-05', '2024-12-10'),
(2, 3200000, '2024-11-20', '2024-11-25'),
(2, 4000000, '2024-12-15', '2024-12-20'),
(1, 8000000, '2024-11-18', '2024-11-24'),
(2, 3700000, '2024-12-03', '2024-12-07'),
(1, 6800000, '2024-11-22', '2024-11-27'),
(2, 4800000, '2024-11-28', '2024-12-03'),
(1, 7500000, '2024-12-08', '2024-12-13'),
(2, 5000000, '2024-12-16', '2024-12-21');

#Thêm 10 hóa đơn đặt tour
INSERT INTO hddattour (tour_id, khachhang_id, hddattour_status) 
VALUES 
(1, 1, 'booked'),
(2, 2, 'completed'),
(3, 3, 'booked'),
(4, 4, 'canceled'),
(5, 5, 'completed'),
(6, 6, 'booked'),
(7, 7, 'completed'),
(8, 8, 'booked'),
(9, 9, 'canceled'),
(10, 10, 'completed');

