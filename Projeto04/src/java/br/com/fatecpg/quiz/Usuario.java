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
    private String hora;
    private String media;
    private String tentativas;
    private String nota;

    public Usuario(String nome, String hora, String media, String tentativas, String nota) {
        this.nome = nome;
        this.hora = hora;
        this.media = media;
        this.tentativas = tentativas;
        this.nota = nota;
    }

    

}
