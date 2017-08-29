//
//  TaskViewController.swift
//  todoList
//
//  Created by Chinmay Patil on 8/26/17.
//  Copyright © 2017 Chinmay Patil. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var dueDateLabel: UILabel!
    
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    @IBOutlet weak var taskDescription: UITextView!
    
    @IBAction func doneAddingTask(_ sender: UIButton) {
        
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
