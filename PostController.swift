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

    static private var posts = [Post]()
    static private var nextIdentifier = 0

    static func fetchTimelineForUser(user: User, completion: (posts: [Post]?) -> Void) {
        completion(posts: posts)
    }
    
    
    static func addPost(image: UIImage, caption:String?, completion: (success: Bool, post: Post?) -> Void) {
        let post = Post(image: image, caption: caption, identifier: String(nextIdentifier))
        nextIdentifier += 1
        posts.append(post)
    }
    static func postFromIdentifier(identifier: String, completion: (post:Post?) -> Void) {
        
    }
        
        
    static func postsForUser(user: User, completion:( posts: [Post]?) -> Void) {
        completion(posts: posts)
    }
    
    
    static func deletePost(post: Post){
    
    }
    
    static func addCommentWithTextToPost(text: String, post: Post, completion:(success: Bool, post: Post?)-> Void) {
        if let currentUser = UserController.sharedController.currentUser {
            let comment = Comment(username: currentUser.username, text: text, postIdentifier: post.identifier!)
            post.comments.append(comment)
            completion(success: true, post: post)
        }
    }
    static func deleteComment(comment:Comment, completion:(success: Bool, post: Post?) -> Void) {
    }
    static func addLikeToPost(post: Post, completion:(success: Bool, post:Post?) -> Void) {
        if let user = UserController.sharedController.currentUser {
            let like = Like(username: user.username , postIdentifier: post.identifier!)
            post.likes.append(like)
            completion(success: true, post: post)
        }
    }
    static func deleteLike(like:Like, completion:(success: Bool, post: Post?) -> Void) {
        
    }
//    static func orderPosts (post: [Post]) -> [Post] {
//
//}
//    static func mockPosts() -> [Post] {
//      let sampleImageIdentifier = "-K1l4125TYvKMc7rcp5e"
//        
//        let post1 = Post(imageEndpoint: sampleImageIdentifier, caption: "Birthday", username: "Retika", comments:[], likes: [], identifier: nil)
//        
//        let post2 = Post(imageEndpoint: sampleImageIdentifier, caption: "Vacation", username: "Diego", comments: [], likes: [], identifier: nil)
//        let post3 = Post(imageEndpoint: sampleImageIdentifier, caption: "School", username: "kaytee", comments: [], likes: [], identifier: nil)
//        
//      return nil
//        
//    }

    
}
