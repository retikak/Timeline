//
//  PostDetailTableViewController.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PostDetailTableViewController: UITableViewController {

    var post: Post! = nil

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!

    @IBAction func likeTapped(sender: AnyObject) {
        PostController.addLikeToPost(post) { (success, post) in
            if success {
                self.updateBasedOnPost()
            }
        }
    }

    @IBAction func addComment(sender: AnyObject) {

        let commentAlert = UIAlertController(title: "Add Comment", message: nil, preferredStyle: .Alert)
        commentAlert.addTextFieldWithConfigurationHandler { (textfield) -> Void in
            textfield.placeholder = "Comment"
        }

        commentAlert.addAction(UIAlertAction(title: "Add", style: .Default, handler: { (action) -> Void in
            if let text = commentAlert.textFields?.first?.text {
                PostController.addCommentWithTextToPost(text, post: self.post) { (success, post) in
                    if success {
                        self.updateBasedOnPost()
                        self.tableView.reloadData()
                    }
                }

            }
        }))

        commentAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: nil))
        presentViewController(commentAlert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBasedOnPost()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func updateBasedOnPost() {
        postImageView.image = post.image
        likesLabel.text = "\(post.likes.count) Likes"
        commentsLabel.text = "\(post.comments.count) Comments"

        tableView.reloadData()
    }


    // MARK: - Table view data source
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.comments.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("commentCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = post.comments[indexPath.row].username
        cell.detailTextLabel?.text = post.comments[indexPath.row].text

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

}
