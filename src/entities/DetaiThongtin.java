package entities;
// Generated Dec 21, 2016 10:56:54 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * DetaiThongtin generated by hbm2java
 */
@Entity
@Table(name = "detai_thongtin", catalog = "detainckh")
public class DetaiThongtin implements java.io.Serializable {

	private DetaiThongtinId id;
	private Detai detai;

	public DetaiThongtin() {
	}

	public DetaiThongtin(DetaiThongtinId id) {
		this.id = id;
	}

	public DetaiThongtin(DetaiThongtinId id, Detai detai) {
		this.id = id;
		this.detai = detai;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "maDeTai", column = @Column(name = "MaDeTai")),
			@AttributeOverride(name = "linhVuc", column = @Column(name = "LinhVuc")),
			@AttributeOverride(name = "loaiHinhCoBan", column = @Column(name = "LoaiHinhCoBan")),
			@AttributeOverride(name = "coQuanChuTri", column = @Column(name = "CoQuanChuTri")),
			@AttributeOverride(name = "tinhHinhTrongNuoc", column = @Column(name = "TinhHinhTrongNuoc")),
			@AttributeOverride(name = "tinhHinhNgoaiNuoc", column = @Column(name = "TinhHinhNgoaiNuoc")),
			@AttributeOverride(name = "cacCongTrinhLienQuan", column = @Column(name = "CacCongTrinhLienQuan")),
			@AttributeOverride(name = "tinhCapThiet", column = @Column(name = "TinhCapThiet")),
			@AttributeOverride(name = "mucTieu", column = @Column(name = "MucTieu")),
			@AttributeOverride(name = "phuongPhapNghienCuu", column = @Column(name = "PhuongPhapNghienCuu")),
			@AttributeOverride(name = "loaiSanPham", column = @Column(name = "LoaiSanPham")),
			@AttributeOverride(name = "diaChiUngDung", column = @Column(name = "DiaChiUngDung")),
			@AttributeOverride(name = "kinhPhi", column = @Column(name = "KinhPhi")) })
	public DetaiThongtinId getId() {
		return this.id;
	}

	public void setId(DetaiThongtinId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MaDeTai", insertable = false, updatable = false)
	public Detai getDetai() {
		return this.detai;
	}

	public void setDetai(Detai detai) {
		this.detai = detai;
	}

}
