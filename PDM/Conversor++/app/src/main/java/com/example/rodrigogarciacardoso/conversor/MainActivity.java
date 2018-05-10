package com.example.rodrigogarciacardoso.conversor;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void abrirTemperatura(View view){
        Intent intent = new Intent(this, TemperaturaActivity.class);
        startActivity(intent);
    }

    public void abrirMedida(View view){
        Intent intent = new Intent(this, MedidaActivity.class);
        startActivity(intent);
    }
}
