//
//  ArticleTableViewCell.swift
//  NewsApp
//
//  Created by Marine Michelot on 27/07/2024.
//

import Foundation

import UIKit
import SDWebImage

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    func configure(with article: Article) {
        titleLabel.text = article.title
        subtitleLabel.text = article.subtitle
        if let url = URL(string: article.imageURL) {
            articleImageView.sd_setImage(with: url, completed: nil)
        }
    }
}
