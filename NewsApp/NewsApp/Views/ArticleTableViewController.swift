//
//  ArticleTableViewController.swift
//  NewsApp
//
//  Created by Marine Michelot on 27/07/2024.
//

import Foundation

import UIKit

class ArticlesTableViewController: UITableViewController {
    private let viewModel = ArticlesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.fetchArticles()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell", for: indexPath) as! ArticleTableViewCell
        let article = viewModel.articles[indexPath.row]
        cell.configure(with: article)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = viewModel.articles[indexPath.row]
        let articleVC = ArticleViewController()
        articleVC.articleURL = article.articleURL
        navigationController?.pushViewController(articleVC, animated: true)
    }
}

extension ArticlesTableViewController: ArticlesViewModelDelegate {
    func didUpdateArticles() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
