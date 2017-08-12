package com.journaldev.service;

public class Translation {

	private String textToBeTranslated;
	
	public void setTranslation(String translation) {
		textToBeTranslated = translation;
	}
	
	public String getTranslation() {
		return textToBeTranslated;
	}
	
	public String translateToGroefnish() {
		String textTranslated = "";
		if (textToBeTranslated != null){
			for (int index = 0; index < textToBeTranslated.length(); index++){
				if (isVowel(textToBeTranslated.charAt(index))) textTranslated += textToBeTranslated.charAt(index) + "nuf";
				else textTranslated += textToBeTranslated.charAt(index);
			}
		}
		return textTranslated;
	}
	
	public static boolean isVowel(char c) {
		return "AEIOUaeiou".indexOf(c) != -1;
	}
	
}
