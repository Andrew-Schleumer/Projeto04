/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.Date;

/**
 *
 * @author andre
 */
public class Usuario {

    private Date data;
    private double nota;

    public Usuario(Date data, double nota) {

        this.data = data;
        this.nota = nota;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
    public class Pessoa{
        
        private String nome;
        private int tentativas;
        private double notas;

        public Pessoa(String nome, double notas) {
            this.nome = nome;
            this.notas = notas;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public int getTentativas() {
            return tentativas;
        }

        public void setTentativas(int tentativas) {
            this.tentativas = tentativas;
        }

        public double getNotas() {
            return notas;
        }

        public void setNotas(double notas) {
            this.notas = notas;
        }
        
    }
}
