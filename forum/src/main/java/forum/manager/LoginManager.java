package forum.manager;

import forum.data.LoginData;
import forum.data.SessionData;
import forum.databese.User;

import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;

import javax.inject.Inject;
import javax.inject.Named;

@Named
@RequestScoped
public class LoginManager {

	@Inject
	private LoginData loginData;

	@Inject
	private SessionData sessionData;


	private String tekstPosleLogina;

	@PostConstruct
	public void init(){

	}

	public void login(){


		if (loginData.getUsername().trim().equals("orelj") && loginData.getPassword().trim().equals("orelj")){

			sessionData.setLogin(true);

			tekstPosleLogina = "Uspesno ulogovano. Unet username: "+loginData.getUsername()+" Unet password: "+loginData.getPassword();


		}else{
			tekstPosleLogina = "Uneti podaci nisu ispravni. Unet username: "+loginData.getUsername()+" Unet password: "+loginData.getPassword();
		}

//		User user = new User();

	}

	public void logout(){
		sessionData.setLogin(false);
		sessionData.setUser(null);
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

}
