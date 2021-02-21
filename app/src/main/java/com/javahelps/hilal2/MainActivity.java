package com.javahelps.hilal2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class MainActivity extends AppCompatActivity {
    ImageButton mMoonBtn, mEventBtn, mFormBtn, mCalendarBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mMoonBtn = findViewById(R.id.moonBtn);
        mMoonBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openMoonPhase();
            }
        });
        mEventBtn = findViewById(R.id.eventBtn);
        mEventBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openEvent();
            }
        });
        mFormBtn = findViewById(R.id.formBtn);
        mFormBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openForm();
            }
        });
        mCalendarBtn = findViewById(R.id.calendarBtn);
        mCalendarBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openCalendar();
            }
        });
    }

    public void openMoonPhase(){
        Intent intent = new Intent(this, MoonPhase.class);
        startActivity(intent);
    }
    public void openEvent(){
        Intent intent = new Intent(this, Event.class);
        startActivity(intent);
    }
    public void openForm(){
        Intent intent = new Intent(this, Form.class);
        startActivity(intent);
    }
    public void openCalendar(){
        Intent intent = new Intent(this, Calendar.class);
        startActivity(intent);
    }
}