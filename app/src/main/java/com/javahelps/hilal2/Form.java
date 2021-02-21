package com.javahelps.hilal2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.vishnusivadas.advanced_httpurlconnection.PutData;

public class Form extends AppCompatActivity {

    EditText mBaitulHilal, mTIjtimak, mWaktuIjtimak, mLongitud, mLatitud, mTMasihi, mTHijrah,
            mWMatahariTerbenam, mWHilalTerbenam, mMasaTerbaik, mAltitud, mElongasi,
            mUmurHilal, mLagTime, mBezaAltitud, mAzimutMatahari;
    Button mSubmitFormBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_form);

        mBaitulHilal = findViewById(R.id.BaitulHilal);
        mTIjtimak = findViewById(R.id.TIjtimak);
        mWaktuIjtimak = findViewById(R.id.WaktuIjtimak);
        mLongitud = findViewById(R.id.Longitud);
        mLatitud = findViewById(R.id.Latitud);
        mTMasihi = findViewById(R.id.TMasihi);
        mTHijrah = findViewById(R.id.THijrah);
        mWMatahariTerbenam = findViewById(R.id.WMatahariTerbenam);
        mWHilalTerbenam = findViewById(R.id.WHilalTerbenam);
        mMasaTerbaik = findViewById(R.id.MasaTerbaik);
        mAltitud = findViewById(R.id.Altitud);
        mElongasi = findViewById(R.id.Elongasi);
        mUmurHilal = findViewById(R.id.UmurHilal);
        mLagTime = findViewById(R.id.LagTime);
        mBezaAltitud = findViewById(R.id.BezaAltitud);
        mAzimutMatahari = findViewById(R.id.AzimutMatahari);
        mSubmitFormBtn = findViewById(R.id.submitformBtn);

        mSubmitFormBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String BaitulHilal, TIjtimak, WaktuIjtimak, Longitud, Latitud, TMasihi, THijrah,
                        WMatahariTerbenam, WHilalTerbenam, MasaTerbaik, Altitud, Elongasi,
                        UmurHilal, LagTime, BezaAltitud, AzimutMatahari;

                BaitulHilal = String.valueOf(mBaitulHilal.getText());
                TIjtimak = String.valueOf(mTIjtimak.getText());
                WaktuIjtimak = String.valueOf(mWaktuIjtimak.getText());
                Longitud = String.valueOf(mLongitud.getText());
                Latitud = String.valueOf(mLatitud.getText());
                TMasihi = String.valueOf(mTMasihi.getText());
                THijrah = String.valueOf(mTHijrah.getText());
                WMatahariTerbenam = String.valueOf(mWMatahariTerbenam.getText());
                WHilalTerbenam = String.valueOf(mWHilalTerbenam.getText());
                MasaTerbaik = String.valueOf(mMasaTerbaik.getText());
                Altitud = String.valueOf(mAltitud.getText());
                Elongasi = String.valueOf(mElongasi.getText());
                UmurHilal = String.valueOf(mUmurHilal.getText());
                LagTime = String.valueOf(mLagTime.getText());
                BezaAltitud = String.valueOf(mBezaAltitud.getText());
                AzimutMatahari = String.valueOf(mAzimutMatahari.getText());

                if (!BaitulHilal.equals("") && !TIjtimak.equals("") && !WaktuIjtimak.equals("") && !Longitud.equals("")
                        && !Latitud.equals("") && !TMasihi.equals("") && !THijrah.equals("") && !WMatahariTerbenam.equals("")
                        && !WHilalTerbenam.equals("") && !MasaTerbaik.equals("") && !Altitud.equals("") && !Elongasi.equals("")
                        && !UmurHilal.equals("") && !LagTime.equals("") && !BezaAltitud.equals("") && !AzimutMatahari.equals("")){

                    Handler handler = new Handler();
                    handler.post(new Runnable() {
                        @Override
                        public void run() {
                            //Starting Write and Read data with URL
                            //Creating array for parameters
                            String[] field = new String[16];
                            field[0] = "BaitulHilal";
                            field[1] = "TIjtimak";
                            field[2] = "WaktuIjtimak";
                            field[3] = "Longitud";
                            field[4] = "Latitud";
                            field[5] = "TMasihi";
                            field[6] = "THijrah";
                            field[7] = "WMatahariTerbenam";
                            field[8] = "WHilalTerbenam";
                            field[9] = "MasaTerbaik";
                            field[10] = "Altitud";
                            field[11] = "Elongasi";
                            field[12] = "UmurHilal";
                            field[13] = "LagTime";
                            field[14] = "BezaAltitud";
                            field[15] = "AzimutMatahari";
                            //Creating array for data
                            String[] data = new String[16];
                            data[0] = BaitulHilal;
                            data[1] = TIjtimak;
                            data[2] = WaktuIjtimak;
                            data[3] = Longitud;
                            data[4] = Latitud;
                            data[5] = TMasihi;
                            data[6] = THijrah;
                            data[7] = WMatahariTerbenam;
                            data[8] = WHilalTerbenam;
                            data[9] = MasaTerbaik;
                            data[10] = Altitud;
                            data[11] = Elongasi;
                            data[12] = UmurHilal;
                            data[13] = LagTime;
                            data[14] = BezaAltitud;
                            data[15] = AzimutMatahari;
                            PutData putData = new PutData("http://192.168.1.13/LoginRegister/form.php", "POST", field, data);
                            if (putData.startPut()) {
                                if (putData.onComplete()) {
                                    String result = putData.getResult();
                                    if(result.equals("Submit Form Success")){
                                        Toast.makeText(getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                                        Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                                        startActivity(intent);
                                        //startActivity(new Intent(getApplicationContext(), MainActivity.class));
                                        finish();
                                    }
                                    else {
                                        Toast.makeText(getApplicationContext(), result, Toast.LENGTH_SHORT).show();

                                    }

                                }
                            }
                            //End Write and Read data with URL
                        }
                    });
                }
                else {
                    Toast.makeText(getApplicationContext(), "All fields required", Toast.LENGTH_SHORT).show();
                }

            }
        });
    }

}