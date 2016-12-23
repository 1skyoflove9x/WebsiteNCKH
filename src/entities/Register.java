package entities;
// Generated Dec 21, 2016 10:56:54 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Register generated by hbm2java
 */
@Entity
@Table(name = "register", catalog = "detainckh")
public class Register implements java.io.Serializable {

	private RegisterId id;

	public Register() {
	}

	public Register(RegisterId id) {
		this.id = id;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "sno", column = @Column(name = "SNo")),
			@AttributeOverride(name = "firstname", column = @Column(name = "firstname", length = 50)),
			@AttributeOverride(name = "lastname", column = @Column(name = "lastname", length = 50)),
			@AttributeOverride(name = "username", column = @Column(name = "Username", length = 50)),
			@AttributeOverride(name = "email", column = @Column(name = "Email", length = 50)),
			@AttributeOverride(name = "country", column = @Column(name = "Country", length = 50)) })
	public RegisterId getId() {
		return this.id;
	}

	public void setId(RegisterId id) {
		this.id = id;
	}

}
