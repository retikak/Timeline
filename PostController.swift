//
//  PostController.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit
class PostController {
    
    
    static func fetchTimelineForUser(user: User, completion: (posts: [Post]?) -> Void) {
    
    }
    
    
    static func addPost(image: UIImage, caption:String?, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    static func postFromIdentifier(identifier: String, completion: (post:Post?) -> Void) {
        
    }
        
        
    static func postsForUser(user: User, completion:( posts: [Post]?) -> Void) {
        
    }
    
    
    static func deletePost(post: Post){
    
    }
    
    static func addCommentWithTextToPost(text: String, post: Post, completion:(success: Bool, post: Post?)-> Void) {
    
        }
    static func deleteComment(comment:Comment, completion:(success: Bool, post: Post?) -> Void) {
        
    }
    static func addLikeToPost(post: Post, completion:(success: Bool, post:Post?) -> Void) {
        
        }
    static func deleteLike(like:Like, completion:(success: Bool, post: Post?) -> Void) {
        
    }
    static func orderPosts (post: [Post]) -> [Post] {
        
}
    static func mockPosts() -> [Post] {
      let sampleImageIdentifier = "-K1l4125TYvKMc7rcp5e"
        
        let post1 = Post(imageEndpoint: sampleImageIdentifier, caption: "Birthday", username: "Retika", comments:[], likes: [], identifier: nil)
        
        let post2 = Post(imageEndpoint: sampleImageIdentifier, caption: "Vacation", username: "Diego", comments: [], likes: [], identifier: nil)
        let post3 = Post(imageEndpoint: sampleImageIdentifier, caption: "School", username: "kaytee", comments: [], likes: [], identifier: nil)
        
        
        
    }
    
    
}
