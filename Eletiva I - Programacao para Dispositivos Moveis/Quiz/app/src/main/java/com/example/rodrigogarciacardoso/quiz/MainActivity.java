package com.example.rodrigogarciacardoso.quiz;

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

    public void abrirPergunta(View view){
        Intent intent = new Intent(this, PerguntaActivity.class);
        startActivity(intent);
    }

    public void abrirPergunta2(View view){
        Intent intent = new Intent(this, PerguntaActivity.class);
        intent.putExtra("pergunta", "2 - Os arquivos de layout das telas android são escritos no formato...");
        intent.putExtra("a", "JPG");
        intent.putExtra("b", "XML");
        intent.putExtra("c", "Java");
        intent.putExtra("d", "PNG");
        startActivity(intent);
    }

    public void abrirPergunta3(View view)
    {
        Intent intent = new Intent(this, PerguntaActivity.class);

        intent.putExtra("pergunta", "3 - Como é chamado o metodo usado " +
                "para acessarmos os elementos da interface no código Java?");
        intent.putExtra("a","findViewById()");
        intent.putExtra("b","accessWidget()");
        intent.putExtra("c","connect()");
        intent.putExtra("d","widget()");

        startActivity(intent);
    }

    public void abrirPergunta4(View view)
    {
        Intent intent = new Intent(this, PerguntaActivity.class);

        intent.putExtra("pergunta", "4 - Todos os Widgets no Android são " +
                "subclasses de ...");
        intent.putExtra("a","Widget");
        intent.putExtra("b","View");
        intent.putExtra("c","Activity");
        intent.putExtra("d","intent");

        startActivity(intent);
    }

    public void abrirPergunta5(View view)
    {
        Intent intent = new Intent(this, PerguntaActivity.class);

        intent.putExtra("pergunta", "5 - Qual a classe usada para abrirmos " +
                "novas telas? ");
        intent.putExtra("a","View");
        intent.putExtra("b","New");
        intent.putExtra("c","Open");
        intent.putExtra("d","intent");

        startActivity(intent);
    }
}
