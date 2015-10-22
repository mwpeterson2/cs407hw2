//
//  EventDetailViewController.swift
//  hw2
//
//  Created by Matt Peterson on 10/21/15.
//  Copyright © 2015 Matt Peterson. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController
{
    var name: String = ""
    var date: String = ""
    var time: String = ""
    var event: String = ""
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var dateField: UITextField!
    @IBOutlet var timeField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "doneSegue")
        {
            name = nameField.text!
            date = dateField.text!
            time = timeField.text!
            
            event = "\(name)  -  \(date)  -  \(time)"
        }
    }
    
    @IBAction func done(segue:UIStoryboardSegue)
    {
    }
    @IBAction func cancel(segue:UIStoryboardSegue)
    {
    }
}
