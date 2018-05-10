package com.example.lucas.conversor;

public class Temperatura {

    private double grausCelcius = -50;
    private double grausFahrenheit = 0.00;

    public double getGrausCelcius() {
        return grausCelcius;
    }

    public void setGrausCelcius(double grausCelcius) {
        this.grausCelcius = grausCelcius - 50;
    }

    public double getGrausFahrenheit() {
        return grausFahrenheit;
    }

    public void setGrausFahrenheit(double grausFahrenheit) {
        this.grausFahrenheit = grausFahrenheit;
    }

    public void converterCelsiusToFahrenheit(){
        double convertido = 0;
        convertido = (double) ((this.getGrausCelcius() * 9) / 5) + 32;
        setGrausFahrenheit(convertido);
    }
}
