//
//  ArticlesViewModel.swift
//  NewsApp
//
//  Created by Marine Michelot on 27/07/2024.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol ArticlesViewModelDelegate: AnyObject {
    func didUpdateArticles()
}

class ArticlesViewModel {
    weak var delegate: ArticlesViewModelDelegate?
    var articles: [Article] = []

    func fetchArticles() {
        if let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
           let config = NSDictionary(contentsOfFile: path),
           let apiKey = config["APIKey"] as? String {
            let url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)"
            AF.request(url).responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    self.articles = json["articles"].arrayValue.map {
                        Article(
                            source: $0["source"]["name"].stringValue,
                            author: $0["author"].stringValue,
                            title: $0["title"].stringValue,
                            subtitle: $0["description"].stringValue,
                            publishedDate: $0["publishedAt"].stringValue,
                            imageURL: $0["urlToImage"].stringValue,
                            articleURL: $0["url"].stringValue
                        )
                    }
                    self.delegate?.didUpdateArticles()
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}

