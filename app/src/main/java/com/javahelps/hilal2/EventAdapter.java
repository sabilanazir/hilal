package com.javahelps.hilal2;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.javahelps.hilal2.model.Event_modal;

import java.util.List;

public class EventAdapter extends RecyclerView.Adapter<EventAdapter.ViewHolder> {
    List<Event_modal> eventList;
    public EventAdapter(List<Event_modal> eventList){
        this.eventList = eventList;
    }
    @NonNull
    @Override
    public EventAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.event_listview, viewGroup, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull EventAdapter.ViewHolder holder, int position) {
        String name = eventList.get(position).getEventName();
        String date = eventList.get(position).getCurrentDate();
        holder.setData(name,date, position, this);
    }

    @Override
    public int getItemCount() {
        return eventList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        private TextView eventName;
        private TextView currentDate;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            eventName = itemView.findViewById(R.id.eventName);
            currentDate = itemView.findViewById(R.id.currentDate);
        }


        private void setData(String name, String date, final int pos, final EventAdapter adapter) {
            eventName.setText(name);
            currentDate.setText(date);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

                }
            });
        }
    }
}
