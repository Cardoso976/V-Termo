package com.example.rodrigogarciacardoso.conversor;

public class Conversor {

    public double converterCelsiusParaFahrenheit(double celsius){

        return celsius * 1.8 + 32;
    }

    public double converteMilhasParaQuilometros(double milhas){

        return milhas * 1.609;
    }

    public double conveterQuilometrosParaMilhas(double quilometro){
        return quilometro / 1.609;
    }
}
