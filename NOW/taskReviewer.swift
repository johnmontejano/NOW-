//
//  taskReviewer.swift
//  NOW
//
//  Created by John Montejano on 9/4/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class taskReviewer: UIViewController {
    @IBOutlet weak var importantSwitch: UISwitch!

    @IBOutlet weak var taskTF: UITextField!
    var VC = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addTask(sender: AnyObject) {
        //grabbing information
        let task = Task()
        task.name = taskTF.text!
        task.important = importantSwitch.on

        
        VC.allTasks.append(task)
        VC.tableViewController.reloadData()
        navigationController!.popViewControllerAnimated(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
