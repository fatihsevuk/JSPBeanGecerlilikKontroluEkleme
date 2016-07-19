package test;

import bean.Kullanici;

public class Test {

	public static void main(String[] args) {
		
		Kullanici kullanici=new Kullanici("xyz@gmail.com","asghghghghghdd");
		
		if (kullanici.validate()) {
			System.out.println("Doðrulama Baþarýlý.");
		} else {
			System.out.println(kullanici.getMessage());
		}

	}

}
