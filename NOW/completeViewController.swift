//
//  completeViewController.swift
//  NOW
//
//  Created by John Montejano on 9/4/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class completeViewController: UIViewController {
    var task  = Task()
    var VC = ViewController()


    @IBOutlet weak var taskLabel: UILabel!
       override func viewDidLoad() {
        super.viewDidLoad()
        print("you hit the label")
taskLabel.text = task.name
        // Do any additional setup after loading the view.
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
    @IBAction func completeButton(sender: AnyObject) {
        
        VC.allTasks.removeAtIndex(VC.selectedIndex)
        VC.tableViewController.reloadData()
        navigationController!.popViewControllerAnimated(true)
        
    }

}
