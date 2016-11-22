package connectdatabase;

public class User {
private String UserName;
private String PassWord;
private String Quyen;



public User(String userName, String passWord, String quyen) {
	UserName = userName;
	PassWord = passWord;
	Quyen = quyen;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getPassWord() {
	return PassWord;
}
public void setPassWord(String passWord) {
	PassWord = passWord;
}
public String getQuyen() {
	return Quyen;
}
public void setQuyen(String quyen) {
	Quyen = quyen;
}

}
