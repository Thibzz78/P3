//
//  Character.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation


class Character{
    var lifePoint : Int
    var name : String
    var canHeal : Bool
    var healPoint : Int
    var weapons : Weapon
    
    init(lifePoint : Int, name : String, canHeal : Bool,  healPoint : Int, weapons : Weapon) {
        self.lifePoint = lifePoint
        self.name = name
        self.canHeal = canHeal
        self.healPoint = healPoint
        self.weapons = weapons
    }
    
    func attaquer(){

    }
    
}
