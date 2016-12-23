package entities;
// Generated Dec 21, 2016 10:56:54 AM by Hibernate Tools 5.2.0.CR1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Detai generated by hbm2java
 */
@Entity
@Table(name = "detai", catalog = "detainckh")
public class Detai implements java.io.Serializable {

	private String maDeTai;
	private Thongtincanbo thongtincanbo;
	private String tenDeTai;
	private Set<DetaiSanpham> detaiSanphams = new HashSet<DetaiSanpham>(0);
	private Set<Diemdanhgia> diemdanhgias = new HashSet<Diemdanhgia>(0);
	private Set<DetaiSinhvien> detaiSinhviens = new HashSet<DetaiSinhvien>(0);
	private Set<Phancongnghiemthu> phancongnghiemthus = new HashSet<Phancongnghiemthu>(0);
	private Set<Phancongphanbien> phancongphanbiens = new HashSet<Phancongphanbien>(0);
	private Set<DetaiThongtin> detaiThongtins = new HashSet<DetaiThongtin>(0);
	private Set<DetaiNoidungnc> detaiNoidungncs = new HashSet<DetaiNoidungnc>(0);
	private Set<Ykiendanhgia> ykiendanhgias = new HashSet<Ykiendanhgia>(0);
	private Set<Kinhphi> kinhphis = new HashSet<Kinhphi>(0);

	public Detai() {
	}

	public Detai(String maDeTai) {
		this.maDeTai = maDeTai;
	}

	public Detai(String maDeTai, Thongtincanbo thongtincanbo, String tenDeTai, Set<DetaiSanpham> detaiSanphams,
			Set<Diemdanhgia> diemdanhgias, Set<DetaiSinhvien> detaiSinhviens, Set<Phancongnghiemthu> phancongnghiemthus,
			Set<Phancongphanbien> phancongphanbiens, Set<DetaiThongtin> detaiThongtins,
			Set<DetaiNoidungnc> detaiNoidungncs, Set<Ykiendanhgia> ykiendanhgias, Set<Kinhphi> kinhphis) {
		this.maDeTai = maDeTai;
		this.thongtincanbo = thongtincanbo;
		this.tenDeTai = tenDeTai;
		this.detaiSanphams = detaiSanphams;
		this.diemdanhgias = diemdanhgias;
		this.detaiSinhviens = detaiSinhviens;
		this.phancongnghiemthus = phancongnghiemthus;
		this.phancongphanbiens = phancongphanbiens;
		this.detaiThongtins = detaiThongtins;
		this.detaiNoidungncs = detaiNoidungncs;
		this.ykiendanhgias = ykiendanhgias;
		this.kinhphis = kinhphis;
	}

	@Id

	@Column(name = "MaDeTai", unique = true, nullable = false)
	public String getMaDeTai() {
		return this.maDeTai;
	}

	public void setMaDeTai(String maDeTai) {
		this.maDeTai = maDeTai;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GVHD")
	public Thongtincanbo getThongtincanbo() {
		return this.thongtincanbo;
	}

	public void setThongtincanbo(Thongtincanbo thongtincanbo) {
		this.thongtincanbo = thongtincanbo;
	}

	@Column(name = "TenDeTai")
	public String getTenDeTai() {
		return this.tenDeTai;
	}

	public void setTenDeTai(String tenDeTai) {
		this.tenDeTai = tenDeTai;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<DetaiSanpham> getDetaiSanphams() {
		return this.detaiSanphams;
	}

	public void setDetaiSanphams(Set<DetaiSanpham> detaiSanphams) {
		this.detaiSanphams = detaiSanphams;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<Diemdanhgia> getDiemdanhgias() {
		return this.diemdanhgias;
	}

	public void setDiemdanhgias(Set<Diemdanhgia> diemdanhgias) {
		this.diemdanhgias = diemdanhgias;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<DetaiSinhvien> getDetaiSinhviens() {
		return this.detaiSinhviens;
	}

	public void setDetaiSinhviens(Set<DetaiSinhvien> detaiSinhviens) {
		this.detaiSinhviens = detaiSinhviens;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<Phancongnghiemthu> getPhancongnghiemthus() {
		return this.phancongnghiemthus;
	}

	public void setPhancongnghiemthus(Set<Phancongnghiemthu> phancongnghiemthus) {
		this.phancongnghiemthus = phancongnghiemthus;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<Phancongphanbien> getPhancongphanbiens() {
		return this.phancongphanbiens;
	}

	public void setPhancongphanbiens(Set<Phancongphanbien> phancongphanbiens) {
		this.phancongphanbiens = phancongphanbiens;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<DetaiThongtin> getDetaiThongtins() {
		return this.detaiThongtins;
	}

	public void setDetaiThongtins(Set<DetaiThongtin> detaiThongtins) {
		this.detaiThongtins = detaiThongtins;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<DetaiNoidungnc> getDetaiNoidungncs() {
		return this.detaiNoidungncs;
	}

	public void setDetaiNoidungncs(Set<DetaiNoidungnc> detaiNoidungncs) {
		this.detaiNoidungncs = detaiNoidungncs;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<Ykiendanhgia> getYkiendanhgias() {
		return this.ykiendanhgias;
	}

	public void setYkiendanhgias(Set<Ykiendanhgia> ykiendanhgias) {
		this.ykiendanhgias = ykiendanhgias;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "detai")
	public Set<Kinhphi> getKinhphis() {
		return this.kinhphis;
	}

	public void setKinhphis(Set<Kinhphi> kinhphis) {
		this.kinhphis = kinhphis;
	}

}
