//
//  Game.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Game: Character{

    override init(lifePoint: Int, attackPoint: Int, name: String, canHeal: Bool, healPoint: Int, arme: Weapon) {
        var turnCount : Int
        var team1 = [Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme),
                     Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme),
                     Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme)
                    ]
        var team2 = [Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme),
                     Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme),
                     Character(lifePoint: 0, attackPoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: arme)
                    ]
        super.init(lifePoint: lifePoint, attackPoint: attackPoint, name: name, canHeal: canHeal, healPoint: healPoint, arme: arme)
    }
    func createTeam(){
        var joueur1 : String
        print("Joueur 1, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team1[0].name = joueur1
    }
}
