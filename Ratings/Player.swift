//
//  Player.swift
//  Ratings
//
//  Created by tony on 2017/3/22.
//  Copyright © 2017年 tony. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    var game: String
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name!
        self.game = game!
        self.rating = rating;
    }
}
