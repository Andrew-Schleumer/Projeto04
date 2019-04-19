package br.com.fatecpg.quiz;

import java.util.ArrayList;


public class Quiz {
    public static ArrayList<Question> getMathTest(){
        ArrayList<Question> test = new ArrayList<>();
        test.add(new Question("23+3", "26", new String[]{"20", "22", "23", "26"}));
        test.add(new Question("22-11", "11", new String[]{"11", "10", "12", "14"}));
        test.add(new Question("45-15", "30", new String[]{"31", "27", "30", "33"}));
        test.add(new Question("150-20", "130", new String[]{"131", "127", "130", "133"}));
        test.add(new Question("99+9", "108", new String[]{"111", "105", "108", "103"}));
        test.add(new Question("12x3", "36", new String[]{"33", "34", "30", "36"}));
        test.add(new Question("45÷3", "15", new String[]{"13", "15", "16", "14"}));
        test.add(new Question("50+1550", "1600", new String[]{"1634", "1523", "1600", "1599"}));
        test.add(new Question("332+68", "400", new String[]{"397", "390", "410", "400"}));
        test.add(new Question("20-15", "5", new String[]{"5", "3", "4", "6"}));
        return test;
    }
}
