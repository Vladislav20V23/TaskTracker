package com.task.trackker.controller;

import com.task.trackker.entity.Task;
import com.task.trackker.entity.User;
import com.task.trackker.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AppController {

    @Autowired
    private TaskService taskService;

    @RequestMapping("/")
    public String showAllTasks(Model model){

        List<Task> allTask = taskService.getAllTasks();
        model.addAttribute("allTask", allTask);

        User user = new User();
        model.addAttribute("user", user);


//        return "all-tasks";
        return "allTasks";
    }

    @RequestMapping("/detailTask")
    public String updateEmployee(@RequestParam("taskId") int id, Model model){

        Task task = taskService.getTask(id);
        model.addAttribute("task", task);


        return "detailTask";
    }

    @RequestMapping("/saveTask")
    public String saveTask(@ModelAttribute("task") Task task){

        taskService.saveTask(task);
        return "redirect:/";
    }

    @RequestMapping("/deleteTask")
    public String deleteTask(@RequestParam("taskId") int id, Model model){

        taskService.deleteTask(id);
        return "redirect:/";
    }

    @RequestMapping("/addNewTask")
    public String addNewTask(Model model){
        Task task = new Task();
        model.addAttribute("task", task);
        return "detailTask";
    }

}
