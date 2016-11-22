package connectdatabase;

public class ThongTinCaNhan {
private String HoVaTen;
private String Email;
private String Khoa;
private String Nganh;
private String NgaySinh;
private String CMND;
private String TkNganHang;
private String MaSo;
private String SDT;
private String Lop;
private String NienKhoa;
public String getHoVaTen() {
	return HoVaTen;
}
public void setHoVaTen(String hoVaTen) {
	HoVaTen = hoVaTen;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getKhoa() {
	return Khoa;
}
public void setKhoa(String khoa) {
	Khoa = khoa;
}
public String getNganh() {
	return Nganh;
}
public void setNganh(String nganh) {
	Nganh = nganh;
}
public String getNgaySinh() {
	return NgaySinh;
}
public void setNgaySinh(String ngaySinh) {
	NgaySinh = ngaySinh;
}
public String getCMND() {
	return CMND;
}
public void setCMND(String cMND) {
	CMND = cMND;
}
public String getTkNganHang() {
	return TkNganHang;
}
public void setTkNganHang(String tkNganHang) {
	TkNganHang = tkNganHang;
}
public String getMaSo() {
	return MaSo;
}
public void setMaSo(String maSo) {
	MaSo = maSo;
}
public String getSDT() {
	return SDT;
}
public void setSDT(String sDT) {
	SDT = sDT;
}
public String getLop() {
	return Lop;
}
public void setLop(String lop) {
	Lop = lop;
}
public String getNienKhoa() {
	return NienKhoa;
}
public void setNienKhoa(String nienKhoa) {
	NienKhoa = nienKhoa;
}
public String getGioiTinh() {
	return GioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	GioiTinh = gioiTinh;
}
public String getDiaChi() {
	return DiaChi;
}
public void setDiaChi(String diaChi) {
	DiaChi = diaChi;
}
public String getChiNhanh() {
	return ChiNhanh;
}
public void setChiNhanh(String chiNhanh) {
	ChiNhanh = chiNhanh;
}
private String GioiTinh;
private String DiaChi;
private String ChiNhanh;
public ThongTinCaNhan(String hoVaTen, String email, String khoa, String nganh, String ngaySinh, String cMND,
		String tkNganHang, String maSo, String sDT, String lop, String nienKhoa, String gioiTinh, String diaChi,
		String chiNhanh) {
	HoVaTen = hoVaTen;
	Email = email;
	Khoa = khoa;
	Nganh = nganh;
	NgaySinh = ngaySinh;
	CMND = cMND;
	TkNganHang = tkNganHang;
	MaSo = maSo;
	SDT = sDT;
	Lop = lop;
	NienKhoa = nienKhoa;
	GioiTinh = gioiTinh;
	DiaChi = diaChi;
	ChiNhanh = chiNhanh;
}
}
