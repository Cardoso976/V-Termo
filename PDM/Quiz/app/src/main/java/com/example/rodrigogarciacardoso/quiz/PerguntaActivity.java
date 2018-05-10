package com.example.rodrigogarciacardoso.quiz;

import android.content.Intent;
import android.provider.MediaStore;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

public class PerguntaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pergunta);

        if(getIntent().getExtras() != null){
            TextView txtPergunta = (TextView)findViewById(R.id.txtPergunta);
            RadioButton rbA = (RadioButton)findViewById(R.id.rbA);
            RadioButton rbB = (RadioButton)findViewById(R.id.rbB);
            RadioButton rbC = (RadioButton)findViewById(R.id.rbC);
            RadioButton rbD = (RadioButton)findViewById(R.id.rbD);

            Intent it = getIntent();

            txtPergunta.setText(it.getStringExtra("pergunta"));
            rbA.setText(it.getStringExtra("a"));
            rbB.setText(it.getStringExtra("b"));
            rbC.setText(it.getStringExtra("c"));
            rbD.setText(it.getStringExtra("d"));
        }
    }

    public void Responder(View view){
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.radioGroup);
        if(radioGroup.getCheckedRadioButtonId() == R.id.rbC){
            Toast.makeText(this, "Resposta Certa :)",
                    Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(this, "Resposta Errada... :(",
                    Toast.LENGTH_LONG).show();
        }
    }
}
