/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;


public class Pontuacoes {
    private static ArrayList<Usuario> pontuacoesLista;
    public static ArrayList<Usuario> getPontuacoesLista(){
        if(pontuacoesLista == null){
            pontuacoesLista = new ArrayList<>();
        }
        return pontuacoesLista;
    }
    
    private static ArrayList<Anonimo> anonimoLista;
    public static ArrayList<Anonimo> getAnonimoLista(){
        if(anonimoLista == null){
            anonimoLista = new ArrayList<>();
        }
        return anonimoLista;
    }
}
