//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Tung Nguyen on 11/21/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import Foundation

class Emoji {
    var symbol : String
    var name : String
    var description : String
    var usage : String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
