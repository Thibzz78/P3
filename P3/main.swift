//
//  main.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

let team1 = [Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0)),
             Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0)),
             Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0))
            ]
var team2 = [Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0)),
             Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0)),
             Character(lifePoint: 0, name: "Unknow", canHeal: true, healPoint: 0, arme: Weapon(weapon1: 0))
            ]
var createTeam = Game(turnCount: 0, team1: team1, team2: team2)

createTeam.createTeam()
print("team1 joueur 1 " + team1[0].name)
print("team1 joueur 2 " + team1[1].name)
print("team1 joueur 3 " + team1[2].name)
print("team2 joueur 1 " + team2[0].name)
print("team2 joueur 2 " + team2[1].name)
print("team2 joueur 3 " + team2[2].name)
createTeam.startGame()

