//
//  NewsListViewModel.swift
//  NewsDash
//
//  Created by Rahul on 25/02/21.
//

import Foundation

class NewsListViewModel {
    
    var newsVM = [NewsViewModel]()
    
    let reuseID = "news"
    
    func getNews(completion: @escaping ([NewsViewModel]) -> Void) {
        NetworkManager.shared.getNews { (news) in
            guard let news = news else { return }
            let newsVM = news.map(NewsViewModel.init)
            DispatchQueue.main.sync {
                self.newsVM = newsVM
                completion(newsVM)
                
            }
        }
    }
}
