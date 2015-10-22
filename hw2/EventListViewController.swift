//
//  EventListViewController.swift
//  hw2
//
//  Created by Matt Peterson on 10/21/15.
//  Copyright © 2015 Matt Peterson. All rights reserved.
//

import UIKit

class EventListViewController: UITableViewController
{
    var events = [String]()
    var newEvent: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(segue:UIStoryboardSegue)
    {
        //returns to event list when user hits cancel
    }

    @IBAction func done(segue:UIStoryboardSegue)
    {
        let eventDetailVC = segue.sourceViewController as! EventDetailViewController
        newEvent = eventDetailVC.event
        events.append(newEvent)
        self.tableView.reloadData()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath)

        cell.textLabel!.text = events[indexPath.row]

        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete
        {
            // Delete the row from the data source
            events.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
}
