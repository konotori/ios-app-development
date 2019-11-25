//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Tung Nguyen on 11/25/19.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    
    var book: Book?
    
     struct PropertyKeys {
           static let unwind = "UnwindToBookTable"
       }
    
     override func viewDidLoad() {
           super.viewDidLoad()
           
           updateView()
       }

       @IBAction func saveButtonTapped(_ sender: Any) {
           guard let title = titleTextField.text,
               let author = authorTextField.text,
               let genre = genreTextField.text,
               let length = lengthTextField.text else { return }

           book = Book(title: title, author: author, genre: genre, length: length)
           performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
       }
       
       func updateView() {
           guard let book = book else { return }

           titleTextField.text = book.title
           authorTextField.text = book.author
           genreTextField.text = book.genre
           lengthTextField.text = book.length
       }
    
}
