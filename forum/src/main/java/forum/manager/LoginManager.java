package forum.manager;

import forum.data.LoginData;
import forum.databese.User;

import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;

import javax.inject.Inject;
import javax.inject.Named;

@Named
@RequestScoped
public class LoginManager {

//	@Inject
	private LoginData loginData;

	private String username;
	private String password;


	private String tekstPosleLogina;

	@PostConstruct
	public void init(){
		username = "aaaa";
		password = "aaaa";
	}

	public void login(){

		tekstPosleLogina = "Uspesno ulogovano. Unet username: "+username+" Unet password: "+password;




		User user = new User();

	}



	public LoginData getLoginData() {
		return loginData;
	}

	public void setLoginData(LoginData loginData) {
		this.loginData = loginData;
	}

	public String getTekstPosleLogina() {
		return tekstPosleLogina;
	}

	public void setTekstPosleLogina(String tekstPosleLogina) {
		this.tekstPosleLogina = tekstPosleLogina;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
