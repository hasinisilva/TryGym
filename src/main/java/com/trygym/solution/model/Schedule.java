package com.trygym.solution.model;

import org.hibernate.annotations.ManyToAny;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "schedule")
public class Schedule {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    //private long workout_id;
    private String username;
    private String workout;
    private Date star_date;
    private Date end_date;


    @ManyToMany
    @JoinTable(name = "user_workout", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "workout_id"))
    private Set<Schedule> workouts;
/*
    public void setWorkout_id(long workout_id) {
        this.workout_id = workout_id;
    }

    public long getWorkout_id() {
        return workout_id;
    }
    */

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setWorkout(String workout) {
        this.workout = workout;
    }

    public String getWorkout() {
        return workout;
    }

    public void setStar_date(Date star_date) {
        this.star_date = star_date;
    }

    public Date getStar_date() {
        return star_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setWorkouts(Set<Schedule> workouts) {
        this.workouts = workouts;
    }

    public Set<Schedule> getWorkouts() {
        return workouts;
    }
}
