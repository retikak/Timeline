//
//  Post.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

struct Post:Equatable {
    
    let imageEndPoint:String
    let caption:String?
    let username:String
    let comments:[Comment]
    var likes:[Like]
    var identifier:String?
    
    
    
    init(imageEndpoint:String, caption:String?, username:String = "", comments:[Comment] = [], likes:[Like] = [], identifier:String? = nil){
    
    self.imageEndPoint = imageEndPoint
    self.caption = caption
    self.username = username
    self.comments = comments
    self.likes = likes
    
}
}

func == (lhs:Post, rhs:Post)-> Bool {
    return(lhs:username == rhs:username) && (lhs:identifier == rhs:identifier)
}
