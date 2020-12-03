//
//  main.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

var weapons: [Weapon] = [
    Weapon(name: "🔪 Couteau", damage: 25),
    Weapon(name: "👊 Coup de poing", damage: 20),
    Weapon(name: "🔫 Révolver", damage: 30),
    Weapon(name: "🧱 Bazooka", damage: 40),
    Weapon(name: "💣 Grenade", damage: 35),
    Weapon(name: "🚀 Bombe nucléaire", damage: 50)
]

var team1 = [Character(lifePoint: 0, name: "Warrior", canHeal: true, healPoint: 0, weapons: weapons[0]),
             Character(lifePoint: 0, name: "Magus", canHeal: true, healPoint: 0, weapons: weapons[0]),
             Character(lifePoint: 0, name: "Priest", canHeal: true, healPoint: 0, weapons: weapons[0])
            ]
var team2 = [Character(lifePoint: 0, name: "Warrior", canHeal: true, healPoint: 0, weapons: weapons[0]),
             Character(lifePoint: 0, name: "Magus", canHeal: true, healPoint: 0, weapons: weapons[0]),
             Character(lifePoint: 0, name: "Priest", canHeal: true, healPoint: 0, weapons: weapons[0])
            ]
var createTeam = Game(team1: team1, team2: team2)

createTeam.createTeam()

