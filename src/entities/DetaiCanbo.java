package entities;
// Generated Dec 21, 2016 10:56:54 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * DetaiCanbo generated by hbm2java
 */
@Entity
@Table(name = "detai_canbo", catalog = "detainckh")
public class DetaiCanbo implements java.io.Serializable {

	private DetaiCanboId id;

	public DetaiCanbo() {
	}

	public DetaiCanbo(DetaiCanboId id) {
		this.id = id;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "maDeTai", column = @Column(name = "MaDeTai")),
			@AttributeOverride(name = "maCanBo", column = @Column(name = "MaCanBo", length = 50)),
			@AttributeOverride(name = "trangThai", column = @Column(name = "TrangThai")) })
	public DetaiCanboId getId() {
		return this.id;
	}

	public void setId(DetaiCanboId id) {
		this.id = id;
	}

}
