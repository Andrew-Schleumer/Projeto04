/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

/**
 *
 * @author andre
 */
public class Usuario {

    private String nome;
    private String media;
    private String tentativas;

    public Usuario(String nome, String media, String tentativas) {
        this.nome = nome;
        this.media = media;
        this.tentativas = tentativas;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public String getTentativas() {
        return tentativas;
    }

    public void setTentativas(String tentativas) {
        this.tentativas = tentativas;
    }

}
