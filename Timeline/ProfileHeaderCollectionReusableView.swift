//
//  ProfileHeaderCollectionReusableView.swift
//  Timeline
//
//  Created by Retika Kumar on 2/26/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

protocol ProfileHeaderCollectionReusableViewDelegate{
    

func userTappedFollowActionButton()
func userTappedURLButton()
    
}



class ProfileHeaderCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var urlButton: UIButton!
    
    @IBOutlet weak var followUserButton: UIButton!
    
    var delegate: ProfileHeaderCollectionReusableViewDelegate!
    
    func updateWithUser(user:User) {
        if let bio = user.bio {
            bioLabel.text = bio
        }else {
            bioLabel.hidden = true
        }
        if let url = user.url {
            urlButton.setTitle(url, forState: .Normal)
            
        }else {
            urlButton.hidden = true
        }
        if user == UserController.sharedController.currentUser{
            followUserButton.setTitle("Logout", forState: .Normal)
            
        }else  {
            UserController.userFollowUser(UserController.sharedController.currentUser, followsUser: user, completion: { (follows) -> Void in
                if follows {
                    self.followUserButton.setTitle("unfollow", forState: .Normal)
                    
                }else {
                    self.followUserButton.setTitle("Follow", forState: .Normal)
                }
            })
            
        }
        
        
        }
        
    @IBAction func urlButtonTapped(sender: AnyObject) {
        delegate.userTappedURLButton()
    }
    
        @IBAction func followActionButtonTapped(sender: AnyObject) {
            delegate.userTappedFollowActionButton()
        }
    
    }


    

