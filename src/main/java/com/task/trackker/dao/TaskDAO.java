package com.task.trackker.dao;

import com.task.trackker.entity.Task;

import java.util.List;

public interface TaskDAO {

    public List<Task> getAllTasks();

    public void saveTask(Task task);
    public Task getTask(int id);

    public void deleteTask(int id);
}
