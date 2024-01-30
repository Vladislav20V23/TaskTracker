package com.task.trackker.entity;

import javax.persistence.*;

@Entity
@Table(name = "task")
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String nameTask;

    @Column(name = "description")
    private String description;

    @Column(name = "ungency")
    private String ungency;

    public Task() {
    }

    public Task(String nameTask, String description, String ungency) {
        this.nameTask = nameTask;
        this.description = description;
        this.ungency = ungency;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameTask() {
        return nameTask;
    }

    public void setNameTask(String nameTask) {
        this.nameTask = nameTask;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUngency() {
        return ungency;
    }

    public void setUngency(String ungency) {
        this.ungency = ungency;
    }
}
