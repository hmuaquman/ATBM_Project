INSERT ALL
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV001', 'Nguyễn Văn Cam', 'Nam', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 500, '0233562840', 'Nhân viên cơ bản', 'DV001')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV002', 'Trần Thị Ổi Hồng', 'Nữ', TO_DATE('1995-03-15', 'YYYY-MM-DD'), 600, '0987654321', 'Giảng viên', 'DV002')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV003', 'Lê Văn Mít', 'Nam', TO_DATE('1985-07-20', 'YYYY-MM-DD'), 700, '0123456739', 'Giảng viên', 'DV001')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV004', 'Hoàng Thị Riêng', 'Nữ', TO_DATE('1992-11-10', 'YYYY-MM-DD'), 800, '0909192909', 'Giáo vụ', 'DV003')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV005', 'Phạm Văn Nhài ', 'Nam', TO_DATE('1988-04-25', 'YYYY-MM-DD'), 900, '0923229939', 'Giảng viên', 'DV002')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV006', 'Trần Thị Lan Em', 'Nữ', TO_DATE('1993-09-20', 'YYYY-MM-DD'), 600, '012986789', 'Giảng viên', 'DV004')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV007', 'Nguyễn Văn Tức', 'Nam', TO_DATE('1987-05-15', 'YYYY-MM-DD'), 700, '0987654321', 'Nhân viên cơ bản', 'DV005')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV008', 'Lê Thị Hương Liên', 'Nữ', TO_DATE('1994-11-30', 'YYYY-MM-DD'), 800, '0913029109', 'Giảng viên', 'DV003')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV009', 'Phạm Trần Hùng', 'Nam', TO_DATE('1991-03-25', 'YYYY-MM-DD'), 900, '0922199345', 'Giảng Viên', 'DV001')
   INTO NHANSU (MANV, HOTEN, PHAI, NGSINH, PHUCAP, DT, VAITRO, MADV) VALUES ('NV010', 'Nguyễn Ngọc Ngân', 'Nữ', TO_DATE('1990-07-10', 'YYYY-MM-DD'), 1000, '0234847032', 'Giáo vụ', 'DV002')
SELECT 1 FROM dual;


INSERT ALL
   INTO SINHVIEN (MASV, HOTEN, PHAI, NGSINH, DCHI, DT, MACT, MANGANH, SOTCTL, DTBTL) VALUES ('SV001', 'Nguyễn Thị Thực', 'Nữ', TO_DATE('1998-01-10', 'YYYY-MM-DD'), '123 Đường Vao Tim E, Quận Cam, TP. HCM', '0987654321', 'CT001', 'MA001', 120, 8.5)
   INTO SINHVIEN (MASV, HOTEN, PHAI, NGSINH, DCHI, DT, MACT, MANGANH, SOTCTL, DTBTL) VALUES ('SV002', 'Trần Văn Bằng', 'Nam', TO_DATE('1997-05-20', 'YYYY-MM-DD'), '452 Đường Hai Bà Trưng, Quận Bình Thạnh, TP. HCM', '0123456789', 'CT002', 'MA002', 130, 7.8)
   INTO SINHVIEN (MASV, HOTEN, PHAI, NGSINH, DCHI, DT, MACT, MANGANH, SOTCTL, DTBTL) VALUES ('SV003', 'Cao Mẫn Cảm', 'Nữ', TO_DATE('1999-09-15', 'YYYY-MM-DD'), '346 Đường Linh Chiểu, Quận 2, TP. HCM', '0909328312', 'CT003', 'MA001', 110, 8.2)
   INTO SINHVIEN (MASV, HOTEN, PHAI, NGSINH, DCHI, DT, MACT, MANGANH, SOTCTL, DTBTL) VALUES ('SV004', 'Phan Nghị Định', 'Nam', TO_DATE('1996-12-05', 'YYYY-MM-DD'), '101 Đường Nguyễn Trãi,  TP.Thủ Đức', '0948973731', 'CT004', 'MA003', 125, 9.5)
   INTO SINHVIEN (MASV, HOTEN, PHAI, NGSINH, DCHI, DT, MACT, MANGANH, SOTCTL, DTBTL) VALUES ('SV005', 'Huỳnh Thúc Tiến', 'Nam', TO_DATE('1998-03-25', 'YYYY-MM-DD'), '202 Huỳnh Thúc Kháng, Dĩ An, Bình Dương', '0943182382', 'CT005', 'MA002', 135, 8.7)
SELECT 1 FROM dual;

INSERT ALL
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV001', 'Văn phòng khoa', 'NV001')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV002', 'Bộ môn HTTT', 'NV002')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV003', 'Bộ môn CNPM', 'NV003')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV004', 'Bộ môn KHMT', 'NV004')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV005', 'Bộ môn CNTT', 'NV005')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV006', 'Bộ môn TGMT', 'NV009')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV007', 'BM MMT', 'NV010')
   INTO DONVI (MADV, TENDV, TRGDV) VALUES ('DV008', 'Viễn thông', 'NV006')
SELECT 1 FROM dual;


INSERT ALL
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP001', 'Cơ sở dữ liệu', 3, 30, 20, 50, 'DV001')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP002', 'Lập trình Java', 4, 40, 30, 60, 'DV002')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP003', 'Hệ điều hành', 3, 30, 20, 45, 'DV001')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP004', 'Cấu trúc dữ liệu và giải thuật', 4, 40, 30, 55, 'DV003')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP005', 'An toàn và bảo mật thông tin', 3, 30, 20, 50, 'DV002')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP006', 'Mạng máy tính', 4, 40, 30, 60, 'DV004')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP007', 'Phân tích và thiết kế hệ thống', 3, 30, 20, 45, 'DV003')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP008', 'Lập trình web', 4, 40, 30, 55, 'DV001')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP009', 'Kỹ thuật trình diễn', 3, 30, 20, 50, 'DV002')
   INTO HOCPHAN (MAHP, TENHP, SOTC, STLT, STTH, SOSVTD, MADV) VALUES ('HP010', 'Thực tập công nghệ thông tin', 4, 40, 30, 60, 'DV005')
SELECT 1 FROM dual;


INSERT ALL
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV002', 'HP001', 'HK1', '2024', 'CT001')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV002', 'HP002', 'HK1', '2024', 'CT002')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV003', 'HP003', 'HK1', '2024', 'CT003')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV005', 'HP004', 'HK1', '2024', 'CT004')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV005', 'HP005', 'HK1', '2024', 'CT001')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV002', 'HP006', 'HK1', '2024', 'CT002')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV007', 'HP007', 'HK1', '2024', 'CT003')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV008', 'HP008', 'HK1', '2024', 'CT004')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV006', 'HP009', 'HK2', '2024', 'CT001')
   INTO PHANCONG (MAGV, MAHP, HK, NAM, MACT) VALUES ('NV006', 'HP010', 'HK2', '2024', 'CT002')
SELECT 1 FROM dual;

INSERT ALL
   INTO KHMO (MAHP, HK, NAM, MACT) VALUES ('HP001', 'HK2', '2024', 'CT001')
   INTO KHMO (MAHP, HK, NAM, MACT) VALUES ('HP002', 'HK1', '2024', 'CT002')
   INTO KHMO (MAHP, HK, NAM, MACT) VALUES ('HP003', 'HK1', '2024', 'CT003')
   INTO KHMO (MAHP, HK, NAM, MACT) VALUES ('HP004', 'HK1', '2024', 'CT004')
   INTO KHMO (MAHP, HK, NAM, MACT) VALUES ('HP005', 'HK1', '2024', 'CT001')
SELECT 1 FROM dual;


INSERT ALL
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV001', 'NV002', 'HP001', 'HK1', '2024', 'CT001', 8.5, 8.0, 7.5, 8.0)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV002', 'NV002', 'HP002', 'HK1', '2024', 'CT002', 7.8, 8.2, 8.7, 8.2)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV003', 'NV002', 'HP001', 'HK1', '2024', 'CT003', 8.2, 7.5, 8.0, 7.9)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV004', 'NV006', 'HP001', 'HK1', '2024', 'CT004', 7.5, 8.0, 7.8, 7.7)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV005', 'NV005', 'HP005', 'HK1', '2024', 'CT001', 8.7, 8.5, 8.9, 8.7)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV002', 'NV002', 'HP004', 'HK1', '2024', 'CT002', 7.9, 7.7, 8.1, 7.9)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV003', 'NV007', 'HP003', 'HK1', '2024', 'CT003', 8.1, 8.3, 8.0, 8.1)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV004', 'NV008', 'HP004', 'HK1', '2024', 'CT004', 7.7, 8.2, 7.9, 7.9)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV005', 'NV006', 'HP002', 'HK1', '2024', 'CT001', 8.0, 8.0, 8.3, 8.1)
   INTO DANGKY (MASV, MAGV, MAHP, HK, NAM, MACT, DIEMTHI, DIEMQT, DIEMCK, DIEMTK) VALUES ('SV001', 'NV006', 'HP002', 'HK1', '2024', 'CT002', 7.5, 7.8, 7.7, 7.7)
SELECT 1 FROM dual;

