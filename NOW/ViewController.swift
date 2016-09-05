//
//  ViewController.swift
//  NOW
//
//  Created by John Montejano on 9/2/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewController: UITableView!
    var allTasks :[Task] = []
    var selectedIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        allTasks = makeTask()
        tableViewController.dataSource = self
        tableViewController.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTasks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = allTasks[indexPath.row]
        selectedIndex = indexPath.row
        if task.important{
            task.name = "!😁 \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        };if task.important == false {
            task.name = "NOT IMPORTANT \(task.name)"
        }
        cell.textLabel?.text = task.name
        return cell
    }
    func makeTask () -> [Task]{
        let task1 = Task()
        task1.name = "do your homework by tomorrow"
        task1.important = true
        let task2 = Task()
        task2.name = "Play video games"
        task2.important = false
        let task3 = Task()
        task3.name = "Publish an app to the App Store by today"
        task3.important = true
        
        
        return [task1,task2,task3]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "createTask" {
            var vc = segue.destinationViewController as! taskReviewer
            vc.VC = self
        };if segue.identifier == "complete"{
            var nextVC = segue.destinationViewController as! completeViewController
            nextVC.task = sender as! Task
            nextVC.VC = self
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let task = allTasks[indexPath.row]
        performSegueWithIdentifier("complete", sender: task)
        
    }
    //    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    @IBAction func addButton(sender: AnyObject) {
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

