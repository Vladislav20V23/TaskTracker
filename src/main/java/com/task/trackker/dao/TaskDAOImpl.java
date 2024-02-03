package com.task.trackker.dao;

import com.task.trackker.entity.Task;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TaskDAOImpl implements TaskDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Task> getAllTasks() {

        Session session = sessionFactory.getCurrentSession();
        List<Task> allTask = session.createQuery("from Task", Task.class).getResultList();

        return allTask;
    }

    @Override
    public void saveTask(Task task) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(task);
    }

    @Override
    public Task getTask(int id) {

        Session session = sessionFactory.getCurrentSession();
        Task task = session.get(Task.class, id);

        return task;
    }

    @Override
    public void deleteTask(int id) {
        Session session = sessionFactory.getCurrentSession();
        Task task = session.get(Task.class, id);
        session.remove(task);
    }
}
