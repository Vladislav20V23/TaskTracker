package com.task.trackker.entity;

import java.util.ArrayList;
import java.util.List;

public class User {

    private Task checkBoxTasks;

    public List<Task> tasks = new ArrayList<>();

    public String chexkString;


    public User() {

    }

    public Task getCheckBoxTasks() {
        return checkBoxTasks;
    }

    public void setCheckBoxTasks(Task checkBoxTasks) {
        this.checkBoxTasks = checkBoxTasks;
    }

    public String getChexkString() {
        return chexkString;
    }

    public void setChexkString(String chexkString) {
        this.chexkString = chexkString;
    }

    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }
}
