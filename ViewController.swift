//
//  ViewController.swift
//  Resea
//
//  Created by Dhiman on 11/14/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import UIKit
import ResearchKit


class ViewController: UIViewController {
    
    
    @IBAction func consentTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func surveyTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func balanceTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func TapTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask1, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func SpatialTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask2, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    
}
extension ViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        let taskResult = taskViewController.result
        
        
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
}


