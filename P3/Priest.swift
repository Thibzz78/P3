//
//  Priest.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Priest: Character {

    init(){
        super.init(lifePoint: 130, name: "Magus", canHeal: true, healPoint: 50, weapons: Weapon(name: "nil", damage: 0))
    }
    
    func heal(){
        
    }
}
