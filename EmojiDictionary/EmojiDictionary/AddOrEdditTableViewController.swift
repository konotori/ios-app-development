//
//  AddOrEdditTableViewController.swift
//  EmojiDictionary
//
//  Created by Tung Nguyen on 11/25/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class AddOrEdditTableViewController: UITableViewController {

    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageField: UITextField!
    
    var emoji : Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageField.text = emoji.usage
        }
        updateSaveButtonState()

    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    func updateSaveButtonState() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageField.text ?? ""
        
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {return}
        
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }
    

}
