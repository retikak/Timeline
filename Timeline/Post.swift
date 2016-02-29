//
//  Post.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class Post:Equatable {
    
    let image:UIImage
    let caption:String?
    let username:String
    var comments:[Comment]
    var likes:[Like]
    var identifier:String?
    
    
    
    init(image:UIImage, caption:String?, username:String = "", comments:[Comment] = [], likes:[Like] = [], identifier:String? = nil) {    
        self.image = image
        self.caption = caption
        self.username = username
        self.comments = comments
        self.likes = likes
        self.identifier = identifier
    }
}

func == (lhs:Post, rhs:Post)-> Bool {
    return(lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}