//
//  Magus.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Magus: Character {
    
    init(){
        super.init(lifePoint: 150, name: "Magus", canHeal: false, healPoint: 0, weapons: Weapon(name: "nil", damage: 0))
    }
}
