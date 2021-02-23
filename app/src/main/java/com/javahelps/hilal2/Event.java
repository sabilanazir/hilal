package com.javahelps.hilal2;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;

import com.javahelps.hilal2.model.Event_modal;
import com.vishnusivadas.advanced_httpurlconnection.FetchData;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;


public class Event extends AppCompatActivity {
    private static List<Event_modal> eventList = new ArrayList<>();
    private RecyclerView listViewEvent;
    private EventAdapter adapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_event);

        listViewEvent = findViewById(R.id.event_recycler);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this);
        layoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        listViewEvent.setLayoutManager(layoutManager);

        loadData();
    }

    protected void loadData(){
        eventList.clear();
        //Start ProgressBar first (Set visibility VISIBLE)
        Handler handler = new Handler();
        handler.post(new Runnable() {
            @Override
            public void run() {
                FetchData fetchData = new FetchData("http://172.31.64.1/hilal/php/event.php");
                if (fetchData.startFetch()) {
                    if (fetchData.onComplete()) {
                            String result = fetchData.getResult();
                        try {
                            JSONArray array = new JSONArray(result);
                            //End ProgressBar (Set visibility to GONE)
                            //pass data to a model
                            Log.i("Array Size", String.valueOf(array.length()) );
                            for(int i = 0; i < array.length(); i++){

                                JSONObject event = array.getJSONObject(i);
                                eventList.add(new Event_modal(
                                    Integer.parseInt(event.getString("id")),
                                    Integer.parseInt(event.getString("Year")),
                                    event.getString("EventName"),
                                    event.getString("HijriDate"),
                                    event.getString("CurrentDate")
                                ));
                            }
                            Log.i("Class Even_modal Size", String.valueOf(eventList.size()) );
                             adapter = new EventAdapter(eventList);
                            listViewEvent.setAdapter(adapter);
                        }catch (JSONException e){
                            e.printStackTrace();
                        }
                    }
                }
            }
        });
    }
}