package com.task.trackker.service;

import com.task.trackker.entity.Task;

import java.util.List;

public interface TaskService {

    public List<Task> getAllTasks();

    public void saveTask(Task task);

    public Task getTask(int id);

    public void deleteTask(int id);


}
