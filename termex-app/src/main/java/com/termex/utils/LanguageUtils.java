package com.termex.utils;

public class LanguageUtils {

	public static int getLanguageId(String lang){
		int language = 1;
		if(lang.equalsIgnoreCase("es")){
			language = 1;
		}
		if(lang.equalsIgnoreCase("en")){
			language = 2;
		}
		return language;
	}

}
