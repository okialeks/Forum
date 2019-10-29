package forum.databese;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Topic {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String naslovTeme;
	private Date datumKreiranja;
	private User kreator;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNaslovTeme() {
		return naslovTeme;
	}

	public void setNaslovTeme(String naslovTeme) {
		this.naslovTeme = naslovTeme;
	}

	public Date getDatumKreiranja() {
		return datumKreiranja;
	}

	public void setDatumKreiranja(Date datumKreiranja) {
		this.datumKreiranja = datumKreiranja;
	}

	public User getKreator() {
		return kreator;
	}

	public void setKreator(User kreator) {
		this.kreator = kreator;
	}
}
