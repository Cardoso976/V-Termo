package com.example.lucas.conversor;

public class Temperatura {

    private int grausCelcius = -50;
    private int grausFahrenheit = 0;

    public int getGrausCelcius() {
        return grausCelcius;
    }

    public void setGrausCelcius(int grausCelcius) {
        this.grausCelcius = grausCelcius - 50;
    }

    public int getGrausFahrenheit() {
        return grausFahrenheit;
    }

    public void setGrausFahrenheit(int grausFahrenheit) {
        this.grausFahrenheit = grausFahrenheit;
    }

    public void converterCelsiusToFahrenheit(){
        int convertido = 0;
        convertido = ((this.getGrausCelcius() * 9) / 5) + 32;
        setGrausFahrenheit(convertido);
    }
}
