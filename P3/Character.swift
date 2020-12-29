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
    
    func attack(attacked : Character){
        if attacked.lifePoint <= 0 {
            print("This character \(attacked.name) is dead")
        }else{
            print("Player attack \(attacked.name) with the \(weapons.name) \(weapons.damage) PA")
            attacked.lifePoint = attacked.lifePoint - weapons.damage
            print("Life point remaining : \(attacked.lifePoint)")
        }
    }
}
