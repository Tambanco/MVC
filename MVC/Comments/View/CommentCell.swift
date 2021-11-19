//
//  CommentCell.swift
//  MVC
//
//  Created by tambanco 🥳 on 18.11.2021.
//

import Foundation
import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
        
    }
}
