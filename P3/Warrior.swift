//
//  Warrior.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Warrior: Character {
    
    init(){
        super.init(lifePoint: 200, name: "Warrior", canHeal: false, healPoint: 0, weapons: Weapon(name: "nil", damage: 0))
    }
}
