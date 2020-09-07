package com.example.dicee;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final Button rollButton = findViewById(R.id.rollButton);

        final ImageView leftDice = findViewById(R.id.image_leftDice);

        final ImageView rightDice = findViewById(R.id.image_rightDice);

        final int[] diceArray = {R.drawable.dice1,R.drawable.dice2,R.drawable.dice3,
                R.drawable.dice4,R.drawable.dice5,R.drawable.dice6};

        rollButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("Dicee", "button was pressed");

                Random rng = new Random();

                leftDice.setImageResource(diceArray[rng.nextInt(6)]);
                rightDice.setImageResource(diceArray[rng.nextInt(6)]);

            }
        });


    }
}