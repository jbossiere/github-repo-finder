//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Julian Test on 2/4/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var forksCountLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            ownerImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            starCountLabel.text = "\(repo.stars!)"
            forksCountLabel.text = "\(repo.forks!)"
            descriptionLabel.text = repo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
