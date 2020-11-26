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
    var arme = Weapon(weapon1: 0)
    
    init(lifePoint : Int, name : String, canHeal : Bool,  healPoint : Int, arme : Weapon) {
        self.lifePoint = lifePoint
        self.name = name
        self.canHeal = canHeal
        self.healPoint = healPoint
        self.arme = arme
    }
    
    func attaquer(){
        var selected = 0
        print("Choisir votre personnage\na.\(team1[0].name)\nb.\(team1[1].name)\nc.\(team1[2].name)")
        if let str = readLine(){
            if str != "a" && str != "b" && str != "c"{
                print("erreur de saisi")
            }
            if str == "a"{
                selected = 0
            }
            if str == "b"{
                selected = 1
            }
            if str == "c"{
                selected = 2
            }
            else{ return}
        }
        if canHeal == true{
            print("a.attaquer\nb.soigner")
            if let str = readLine(){
                if str != "a" && str != "b"{
                    print("erreur de saisi")
                }
                if str == "a"{
                    selected = 0
                }
                if str == "b"{
                    selected = 1
                }
                else {return}
            }
        }
        
        
        // Choissisez votre personnage
        // Que souhaitez vous faire ? 1.attaquer --> 2.soigner
        // Si 1 : choisissez l'adversaire --> 1; 2; 3 ---> attaque
        // Si 2 : Qui souhaiter vous soigner ? --> 1; 2; 3 ---> soigner
        // check point de vie des 3 adversaire --> si <=0 (func endGame) --> si >0 (game)
        
        
    }
    
}
