//
//  NewsViewModel.swift
//  NewsDash
//
//  Created by Rahul on 25/02/21.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var description: String {
        return news.discription ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://www.kindpng.com/picc/m/182-1827064_breaking-news-banner-png-transparent-background-breaking-news.png"
    }
}
