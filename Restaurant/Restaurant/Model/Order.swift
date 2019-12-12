
//
//  Order.swift
//  Restaurant
//
//  Created by Tung Nguyen on 12/11/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
