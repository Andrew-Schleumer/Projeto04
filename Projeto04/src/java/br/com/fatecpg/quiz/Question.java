package br.com.fatecpg.quiz;

public class Question {
    private String question;
    private String answer;
    private String alternatives[];

    public Question(String question, String answer, String[] alternativas) {
        this.question = question;
        this.answer = answer;
        this.alternatives = alternativas;
    }
    
    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String[] getAlternatives() {
        return alternatives;
    }

    public void setAlternatives(String[] alternativas) {
        this.alternatives = alternativas;
    }

}
