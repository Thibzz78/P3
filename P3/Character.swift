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
    
    func attaquer(attacked : Character){
        if attacked.lifePoint <= 0 {
            print("Le joueur \(attacked.name) est mort")
        }else{
            print("attaque du joueur \(attacked.name) avec l'arme \(weapons.name) \(weapons.damage) PA")
            attacked.lifePoint = attacked.lifePoint - weapons.damage
            print("point de vie restant : \(attacked.lifePoint)")
        }
    }
}
