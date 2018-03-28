package com.example.lucas.conversor;

import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;

import java.io.BufferedReader;

public class MainActivity extends AppCompatActivity {

    Temperatura temp = new Temperatura();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final TextView txtFahrenheit = (TextView)findViewById(R.id.txtFahrenheit);
        final TextView txtCelcius = (TextView)findViewById(R.id.txtCelcius);
        final SeekBar seekBar = (SeekBar)findViewById(R.id.seekBar);

        seekBar.setMax(100);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                temp.setGrausCelcius(progress);
                String texto = Integer.toString(progress-50)+" ºC";
                txtCelcius.setText(texto);
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                temp.setGrausCelcius(0);
                String texto = Integer.toString(temp.getGrausCelcius())+" ºC";
                txtCelcius.setText(texto);
                txtFahrenheit.setText("ºF: Toque em Converter");
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });

        final Button button = (Button)findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                temp.converterCelsiusToFahrenheit();
                String texto = Integer.toString(temp.getGrausFahrenheit())+" ºF";
                txtFahrenheit.setText(texto);
            }
        });
    }
}
