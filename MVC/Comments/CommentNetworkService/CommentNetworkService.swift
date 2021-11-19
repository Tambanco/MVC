//
//  CommentNetworkService.swift
//  MVC
//
//  Created by tambanco 🥳 on 19.11.2021.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(complition: @escaping() -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            
        }
    }
}
