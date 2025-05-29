package br.com.cadUser;

import java.util.ArrayList;

public class Pessoa {

    private String nome;
    private static ArrayList<String> nomes = new ArrayList<>();

    public Pessoa() {}

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public static void adicionarNome(String nome) {
        if (nome != null && !nome.trim().isEmpty()) {
            nomes.add(nome);
        }
    }

    public static ArrayList<String> getNomes() {
        return nomes;
    }
}
