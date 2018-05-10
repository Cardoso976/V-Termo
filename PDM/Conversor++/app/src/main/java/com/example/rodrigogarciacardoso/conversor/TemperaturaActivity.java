package com.example.rodrigogarciacardoso.conversor;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.SeekBar;
import android.widget.TextView;

public class TemperaturaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_temperatura);

        final SeekBar seekBar = (SeekBar)findViewById(R.id.seekBar);
        final TextView txtCelsius = (TextView)findViewById(R.id.txtCelsius);
        final TextView txtFahr = (TextView)findViewById(R.id.txtFahr);

        final Conversor conversor = new Conversor();

        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                progress -= 50;
                txtCelsius.setText(String.valueOf(progress));
                txtFahr.setText(String.format("%.1f", conversor.converterCelsiusParaFahrenheit(progress)));
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });

    }
}
