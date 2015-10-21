//
//  ViewController.swift
//  hw2
//
//  Created by Matt Peterson on 10/19/15.
//  Copyright © 2015 Matt Peterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var eventText: UITextField!
    @IBOutlet var dateText: UITextField!
    @IBOutlet var timeText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if (segue.identifier == "DataTransfer")
        {
            let svc = segue.destinationViewController as! TableViewController
            
            svc.name = eventText.text!
            svc.date = dateText.text!
            svc.time = timeText.text!
        }
    }
}

