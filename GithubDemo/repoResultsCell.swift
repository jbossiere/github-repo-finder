//
//  repoResultsCell.swift
//  GithubDemo
//
//  Created by Julian Test on 2/3/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class repoResultsCell: UITableViewCell {

//    @IBOutlet weak var repoNameLabel: UILabel!
//    @IBOutlet weak var ownerLabel: UILabel!
//    @IBOutlet weak var avatarImageView: UIImageView!
//    @IBOutlet weak var descriptionLabel: UILabel!
//    @IBOutlet weak var starsNumLabel: UILabel!
//    @IBOutlet weak var forksNumLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
//            repoNameLabel.text = repo.name
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
