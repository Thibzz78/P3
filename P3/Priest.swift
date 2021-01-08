//
//  Priest.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Priest: Character {

    init(){
        super.init(lifePoint: 130, name: "Priest", canHeal: true, healPoint: 50, weapons: Weapon(name: "nil", damage: 0))
    }
    
    func heal(priest : Character, selected : Character){
        if selected.lifePoint <= 0 {
            print("This character \(selected.name) is dead")
        }
        else{
            print("This character \(name) heal the player \(selected.name)")
            selected.lifePoint = selected.lifePoint + priest.healPoint
            print("Life point remaining : \(selected.lifePoint)")
        }
    }
}
