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
            print("Le joueur \(selected.name) est mort")
        }
        else{
            print("Le joueur \(name) soigne le joueur \(selected.name)")
            selected.lifePoint = selected.lifePoint + team1[2].healPoint
            print("point de vie restant : \(selected.lifePoint)")
        }
    }
}
