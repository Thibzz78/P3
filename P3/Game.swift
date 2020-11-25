//
//  Game.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Game{

        var turnCount : Int
        var team1 = [Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0)),
                     Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0)),
                     Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0))
                    ]
        var team2 = [Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0)),
                     Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0)),
                     Character(lifePoint: 0, name: "Unknow", canHeal: false, healPoint: 0, arme: Weapon(weapon1: 0))
                    ]
    init(turnCount: Int, team1: [Character], team2: [Character]) {
        self.turnCount = turnCount
        self.team1 = team1
        self.team2 = team2
    }
    
    func createTeam(){
        var joueur1 : String
        print("Joueur 1, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team1[0].name = joueur1
    }
}
