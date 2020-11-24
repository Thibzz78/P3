//
//  Character.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation


class Character{
    var lifePoint : Int
    var attackPoint : Int
    var name : String
    var canHeal : Bool
    var healPoint : Int
    var arme = Weapon()
    
    init(lifePoint : Int, attackPoint : Int, name : String, canHeal : Bool,  healPoint : Int, arme : Weapon) {
        self.lifePoint = lifePoint
        self.attackPoint = attackPoint
        self.name = name
        self.canHeal = canHeal
        self.healPoint = healPoint
        self.arme = arme
    }
    
    func attaquer(){
        
    }
    
}
