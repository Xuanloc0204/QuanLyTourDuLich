use quanlytourdulich;

#Viết các câu lệnh SQL thực hiện các yêu cầu sau:
#Thống kê số lượng tour của các thành phố

SELECT tp.city_name, 
COUNT(t.tour_id) AS tour_count
FROM thanhpho as tp
LEFT JOIN diemdendulich as dd ON tp.city_id = dd.city_id
LEFT JOIN tour as t ON dd.diemden_Id = t.tour_id
GROUP BY tp.city_name
ORDER BY tp.city_name;

#Tính số tour có ngày bắt đầu trong tháng 11 năm 2024 ( dùng count) 

SELECT COUNT(*) AS soTourBatDau
FROM tour
WHERE tour_ngaybd BETWEEN '2024-11-01' AND '2024-11-30';

#Tính số tour có ngày kết thúc trong tháng 12 năm 2024

SELECT COUNT(*) AS soTuorKetThuc
FROM tour
WHERE tour_ngaykt BETWEEN '2024-12-01' AND '2024-12-31';
