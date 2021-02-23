package com.javahelps.hilal2.model;

public class Event_modal {
    private int id;
    private int Year;
    private String EventName;
    private String HijriDate;
    private String CurrentDate;

    public Event_modal(){}

    public Event_modal(int id, int Year, String EventName, String HjriDate, String CurrentDate){
        this.id = id;
        this.Year = Year;
        this.EventName = EventName;
        this.HijriDate = HjriDate;
        this.CurrentDate = CurrentDate;
    }

    public int getId() {
        return id;
    }

    public int getYear() {
        return Year;
    }

    public String getEventName() {
        return EventName;
    }

    public String getHijriDate() {
        return HijriDate;
    }

    public String getCurrentDate() {
        return CurrentDate;
    }
}
