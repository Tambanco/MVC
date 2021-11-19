//
//  ViewController.swift
//  MVC
//
//  Created by tambanco 🥳 on 18.11.2021.
//

import UIKit

class CommentsViewController: UIViewController {
    
    private let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkService.shared.getData(url: url) { (json) in
            
        }
    }
}

// MARK: - TableView delegate and DataSource
extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
