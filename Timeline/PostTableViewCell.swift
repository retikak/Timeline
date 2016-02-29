//
//  PostTableViewCell.swift
//  Timeline
//
//  Created by Retika Kumar on 2/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {


    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateWithPost(post: Post) {
        postImageView.image = post.image
        commentsLabel.text = "\(post.comments.count) Comments"
        likesLabel.text = "\(post.likes.count) Likes"
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
