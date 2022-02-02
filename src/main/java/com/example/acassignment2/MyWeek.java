package com.example.acassignment2;

import java.util.Arrays;
import java.util.List;

public class MyWeek {
    private String name;

    public MyWeek() {
    }

    public enum Day {
        SUNDAY, MONDAY, TUESDAY, WEDNESDAY,
        THURSDAY, FRIDAY, SATURDAY
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return "A description of how the week usually goes for " + name;
    }

    public int getNumberDays() {
        return 7;
    }

    public List<Day> getWorkingDays() {
        return Arrays.asList(Day.THURSDAY,
                Day.FRIDAY);
    }

    public int getNumberWorkingDays() {
        return this.getWorkingDays().size();
    }

    public int getNumberOffDays() { return this.getNumberDays() - this.getNumberWorkingDays(); }

    public double getTimeWorkingPercent() {
        double percentage;

        double workingDays = this.getNumberWorkingDays();
        double allDays = this.getNumberDays();
        percentage = (workingDays / allDays) * 100;

        return percentage;
    }

    public String getOpinion() {

        if (getNumberWorkingDays() > getNumberOffDays()) {
            return "This is far from ideal :(";
        }
        else{
            return "";
        }
    }
}