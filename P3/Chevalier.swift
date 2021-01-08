//
//  Chevalier.swift
//  P3
//
//  Created by Thibault Bernard on 08/01/2021.
//

import Foundation


class Chevalier: Character {

    init(){
        super.init(lifePoint: 250, name: "Chevalier", canHeal: false, healPoint: 0, weapons: Weapon(name: "nil", damage: 0))
    }
}
