<<<<<<< HEAD
use QuanLyCayXanh;
-- ----------------------Xoa cac bang theo thu tu---------------------------
-- drop table LIENKET_CHUCVU,CHAMSOC_CAYXANH,CONGVIEC,NGUOIDUNG,CAYXANH,CHITIETQUYENTRUYCAP,CHUCVU
-- Tao cac bang--
-- Tao bang cay xanh--
create table CAYXANH
(
	MaCay int auto_increment not null,
	GiongCay varchar(60) ,
	LoaiCay varchar(40) ,
	ToaDoX double not null,
	ToaDoY double not null,
	DiaChiCay varchar(80),
	ChieuCao int,
	SoTuoi int,
	TrangThai varchar(40),
	primary key(MaCay)
);

-- Tao bang nguoi dung--
create table NGUOIDUNG
(
	MaNguoiDung varchar(40) not null,
	MatKhau varchar(40) not null,
	HoVaTen varchar(40) not null, 
	Tuoi tinyint,
	DiaChi varchar(40),
	SDT varchar(20),
	primary key(MaNguoiDung)
);

-- Tao Bang chuc vu--
create table CHUCVU
(
	MaChucVu int primary key not null,
	ChucVu varchar(60) not null -- Ten chuc vu
);

-- Tao bang cong viec--
create table CONGVIEC
(
	MaCongViec varchar(20) not null,
	MaNguoiDung varchar(40) not null,
	TenCongViec varchar(40) not null,
	LoaiCongViec varchar(40),
	ThoiGianBatDau timestamp,
	ThoiGianKetThuc timestamp,
	primary key(MaCongViec),
	foreign key (MaNguoiDung) references NGUOIDUNG(MaNguoiDung)
);

-- Tao bang lien ket nguoi dung va chuc vu--
create table LIENKET_CHUCVU
(
	MaLienKet int, -- 0 admin, 1 quan ly, 2 nhan vien
	MaChucVu int not null,
	MaNguoiDung varchar(40) not null,
	ChoPhep boolean, -- 1 cho phep, 0 ko cho phep
	primary key(MaLienKet),
	foreign key (MaNguoiDung) references NGUOIDUNG(MaNguoiDung),
	foreign key (MaChucVu) references CHUCVU(MaChucVu)
);

-- Tao bang cham soc--
-- drop table CHAMSOC_CAYXANH
create table CHAMSOC_CAYXANH
(
	MaCay int not null,
	MaCongViec varchar(20) not null,
	foreign key (MaCay) references CAYXANH(MaCay),
	foreign key (MaCongViec) references CONGVIEC(MaCongViec)
);

-- Tao bang chi tiet quyen truy cap--
create Table CHITIETQUYENTRUYCAP 
( 
	MaChiTietQuyen int auto_increment primary key,
	MaChucVu int,
	TenQuyenTruyCap varchar(200),
	MaTruyCap varchar(40),
	KiemTra int,
	foreign key (MaChucVu) references CHUCVU(MaChucVu)
=======
use QuanLyCayXanh;
-- ----------------------Xoa cac bang theo thu tu---------------------------
-- drop table LIENKET_CHUCVU,CHAMSOC_CAYXANH,CONGVIEC,NGUOIDUNG,CAYXANH,CHITIETQUYENTRUYCAP,CHUCVU
-- Tao cac bang--
-- Tao bang cay xanh--
create table CAYXANH
(
	MaCay int auto_increment not null,
	GiongCay varchar(60) ,
	LoaiCay varchar(40) ,
	ToaDoX float not null,
	ToaDoY float not null,
	DiaChiCay varchar(80),
	ChieuCao int,
	SoTuoi int,
	primary key(MaCay)
);

-- Tao bang nguoi dung--
create table NGUOIDUNG
(
	MaNguoiDung varchar(40) not null,
	MatKhau varchar(40) not null,
	HoVaTen varchar(40) not null, 
	Tuoi tinyint,
	DiaChi varchar(40),
	SDT varchar(20),
	primary key(MaNguoiDung)
);

-- Tao Bang chuc vu--
create table CHUCVU
(
	MaChucVu int primary key not null,
	ChucVu varchar(60) not null -- Ten chuc vu
);

-- Tao bang cong viec--
create table CONGVIEC
(
	MaCongViec varchar(20) not null,
	MaNguoiDung varchar(40) not null,
	TenCongViec varchar(40) not null,
	LoaiCongViec varchar(40),
	ThoiGianBatDau TimeStamp,
	ThoiGianKetThuc datetime,
	primary key(MaCongViec),
	foreign key (MaNguoiDung) references NGUOIDUNG(MaNguoiDung)
);

-- Tao bang lien ket nguoi dung va chuc vu--
create table LIENKET_CHUCVU
(
	MaLienKet int, -- 0 admin, 1 quan ly, 2 nhan vien
	MaChucVu int not null,
	MaNguoiDung varchar(40) not null,
	ChoPhep int, -- 1 cho phep, 0 ko cho phep
	primary key(MaLienKet),
	foreign key (MaNguoiDung) references NGUOIDUNG(MaNguoiDung),
	foreign key (MaChucVu) references CHUCVU(MaChucVu)
);

-- Tao bang cham soc--
-- drop table CHAMSOC_CAYXANH
create table CHAMSOC_CAYXANH
(
	MaCay int not null,
	MaCongViec varchar(20) not null,
	foreign key (MaCay) references CAYXANH(MaCay),
	foreign key (MaCongViec) references CONGVIEC(MaCongViec)
);

-- Tao bang chi tiet quyen truy cap--
create Table CHITIETQUYENTRUYCAP 
( 
	MaChiTietQuyen int auto_increment primary key,
	MaChucVu int,
	TenQuyenTruyCap varchar(200),
	MaTruyCap varchar(40),
	KiemTra int,
	foreign key (MaChucVu) references CHUCVU(MaChucVu)
>>>>>>> e2e4f7614756a3b24d03cd26537404f7e753fec8
);