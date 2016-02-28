//
//  UserSearchTableViewController.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class UserSearchTableViewController: UITableViewController , UISearchResultsUpdating {
    
    enum ViewMode: Int {
        case Friends = 0
        case All =  1
        func users(completion: (users: [User]?) -> Void) {
            switch self {
            case .Friends:
                UserController.followedByUser(UserController.sharedController.currentUser) { (followers) -> Void in
                    completion(users: followers)
                    
                    case .All:
                    UserController.fetchAllUsers() {(users) -> Void in
                    completion(users: users)
                    }
                }
                
            }
        }
        
        
        
        
        
        @IBOutlet weak var modeSegmentedControl: UISegmentedControl!
        
        let userDataSource:[User] = []
        
        var mode: ViewMode {
            get {
                return ViewMode(rawValue: modeSegmentedControl.selectedSegmentIndex)!
            }
        }
        var searchController = UISearchController
        
        

        
        
        @IBAction func modeSegmentControllerValueChanged(sender: UISegmentedControl) {
        }
                
        
        
        
        
        //MARK:- Search Controller
        
        func setUpSearchController() {
            let resultsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("userSearchResultsTableViewController")
            searchController = UISearchController(searchResultsController: resultsController)
            searchController.
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            
            
            updateViewForMode()
            setUpSearchController()
            
            
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // MARK: - Table view data source
        
        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 0
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return userDataSource.count
        }
        
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("usernameCell", forIndexPath: indexPath)
            
            let user = userDataSource[indexPath.row]
            cell.textLabel?.text = user.username
            return cell
        }
        
        
        /*
        // Override to support conditional editing of the table view.
        override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
        }
        */
        
        /*
        // Override to support editing the table view.
        override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
        // Delete the row from the data source
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        }
        */
        
        /*
        // Override to support rearranging the table view.
        override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        
        }
        */
        
        /*
        // Override to support conditional rearranging of the table view.
        override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
        }
        */
        
        /*
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
        */
        func updateViewBasedOnMode() {
            
        }
        
        
    }
}
