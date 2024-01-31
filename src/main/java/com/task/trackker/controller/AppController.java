package com.task.trackker.controller;

import com.task.trackker.entity.Task;
import com.task.trackker.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

//        return "all-tasks";
        return "test";
    }

    @RequestMapping("/detalInfo")
    public String updateEmployee(@RequestParam("empId") int id, Model model){



        return "test2";
    }

}
