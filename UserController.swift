//
//  UserController.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
class UserController {
    var currentUser: User! = nil
    static let sharedController = UserController()

static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
}

    static func fetchAllUsers(users: String, completion: (users: [User]) -> Void) {
    
}
    static func followUsers(user:User, completion: (success: Bool) -> Void) {
    
}
    static func unfollowUser(user:User, completion:(success:Bool) ->Void) {
    
}
    static func userFollowUser(user:User, followsUser:User, completion: (follows:Bool) ->Void) {
    
}
    static func followedByUser(user:User, completion: (followed:[User]?) ->Void) {
    
    }
    
    
    static func authenticateUser(email:String, password:String, completion:(success:Bool, user:User?) ->Void) {
    
}
    static func createUser(email:String, username:String, password:String, bio:String?, url:String?, completion:(success:Bool, user:User?) -> Void) {
        let newUser = User(username: username, uid: "1", bio: bio, url: url)
        UserController.sharedController.currentUser = newUser
        completion(success: true, user: newUser)
}
    
//    static func updateUser (user:String, username:String, bio:String?, url:String?, completion:(success:Bool, user:User?) -> Void) {
//    var updateUser = User(username: user.username, uid: user.identifier, bio: bio, url: url)
//        updateUser.save()
//        UserController.userForIdentifier(user.identifier) { (user) -> Void in
//            if let user = user {
//                sharedController.CurrentUser = user
//                completion(success: true, user: user)
//            }else {
//                completion(success: false, user: nil)
//            }
//        }

//    }
    
static func logOutCurrentUser() {
    UserController.sharedController.currentUser = nil
    
}

static func mockUsers() -> [User]{
    let user1 = User(username: "Retika", uid:"1", bio: "from Utah", url: "abcd")
    let user2 = User(username: "Diego", uid: "2", bio: "from Boston", url: "xyz")
    let user3 = User(username: "Kaytee", uid:"3", bio: "from Florida", url: "stuv")
    return[user1, user2, user3]
}
}