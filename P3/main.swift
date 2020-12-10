//
//  main.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

var weapons: [Weapon] = [
    Weapon(name: "👊 Coup de poing", damage: 20),
    Weapon(name: "🔪 Couteau", damage: 25),
    Weapon(name: "🔫 Révolver", damage: 30),
    Weapon(name: "🧱 Bazooka", damage: 40),
    Weapon(name: "💣 Grenade", damage: 35),
    Weapon(name: "🚀 Bombe nucléaire", damage: 50)
]

var war = Warrior()
var mag = Magus()
var pri = Priest()

var team1 = [war, mag, pri]
var team2 = [war, mag, pri]
var createTeam = Game(team1: team1, team2: team2)

createTeam.createTeam()

