package test;

import bean.Kullanici;

public class Test {

	public static void main(String[] args) {
		
		Kullanici kullanici=new Kullanici("xyz@gmail.com","asghghghghghdd");
		
		if (kullanici.validate()) {
			System.out.println("Do�rulama Ba�ar�l�.");
		} else {
			System.out.println(kullanici.getMessage());
		}

	}

}
