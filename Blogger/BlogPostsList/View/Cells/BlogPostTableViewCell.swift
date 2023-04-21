//
//  BlogPostTableViewCell.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import UIKit

class BlogPostTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        accessibilityIdentifier = "BlogPostTableViewCell"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
