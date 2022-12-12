//
//  Model.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import Foundation


class Game {
    
    static let shared = Game()
    
    private var categories: [Categories] = []
    
    func selectCategory(_ category:Categories) {
        categories.append(category)
    }
    
    func unselectCategory(_ category:Categories) {
        categories.removeAll(where: {$0 == category})
    }
    
    func show() {
        print(categories)
    }
    
    init() {}
}
