package com.journaldev.model;

public class Translation {

	private String textToBeTranslated;

	public String getTranslation() {
		return textToBeTranslated;
	}

	public void setTranslation(String translation) {
		textToBeTranslated = translation;
	}

	public int length(){
		return textToBeTranslated.length();
	}

	public char charAt(int index){
		return textToBeTranslated.charAt(index);
	}

	public String translateToGroefnish() {
		String textInGroefnish = "";
		if (textToBeTranslated != null){
			for (int index = 0; index < textToBeTranslated.length(); index++){
				if (isVowel(textToBeTranslated.charAt(index))) textInGroefnish += textToBeTranslated.charAt(index) + "nuf";
				else textInGroefnish += textToBeTranslated.charAt(index);
			}
		}
		return textInGroefnish;
	}

	public static boolean isVowel(char c) {
		return "AEIOUaeiou".indexOf(c) != -1;
	}

}
