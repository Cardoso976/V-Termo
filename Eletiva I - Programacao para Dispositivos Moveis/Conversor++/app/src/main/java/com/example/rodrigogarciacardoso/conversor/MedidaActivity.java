package com.example.rodrigogarciacardoso.conversor;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;

public class MedidaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_medida);
    }

    public void converter(View view){
        EditText editValor = (EditText)findViewById(R.id.editValor);
        RadioGroup radioGroup = (RadioGroup)findViewById(R.id.radioGroup);
        TextView txtResultado = (TextView)findViewById(R.id.txtResultado);

        String valorStr = editValor.getText().toString();

        double valorOriginal = Double.parseDouble(valorStr);
        double resultado;

        Conversor conversor = new Conversor();
        if(radioGroup.getCheckedRadioButtonId() == R.id.rbMilha){
            resultado = conversor.converteMilhasParaQuilometros(valorOriginal);
        } else {
            resultado = conversor.conveterQuilometrosParaMilhas(valorOriginal);
        }

        txtResultado.setText(String.format("%.1f", resultado));
    }
}
