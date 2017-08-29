//
//  TaskDetailViewController.swift
//  todoList
//
//  Created by Chinmay Patil on 8/26/17.
//  Copyright © 2017 Chinmay Patil. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var taskDescription: UITextView!
    
    let datePickerView = UIDatePicker()
    
    var name: String!
    var taskDueDate: Date!
    var taskDescriptionText: String!
    
    @IBAction func triggerDatePicker(_ sender: UITextField) {
        
        datePickerView.datePickerMode = UIDatePickerMode.dateAndTime
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(TaskDetailViewController.handleDatePicker), for: UIControlEvents.valueChanged)
    }
    
    
    @IBAction func saveTaskName(_ sender: UITextField, forEvent event: UIEvent) {
        name = nameTextField.text
    }
    
    func handleDatePicker() {
        let
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy 'at' HH:mm"
        dueDateTextField.text = dateFormatter.string(from: datePickerView.date)
        taskDueDate = datePickerView.date
        dueDateTextField.resignFirstResponder()
        
    }
    
    @IBAction func returnBackToList(_ sender: UIButton) {
        
        if let _ = name {
            taskDescriptionText = taskDescription.text
            self.performSegue(withIdentifier: "returnFromTaskDetail", sender: self)
        }
        
        else {
            nameTextField.placeholder = "Enter task name"
            nameTextField.backgroundColor =  UIColor.red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
