//
//  main.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

var weapons: [Weapon] = [
    Weapon(name: "👊 Punch", damage: 20),
    Weapon(name: "🔪 Knife", damage: 25),
    Weapon(name: "🔫 Gun", damage: 30),
    Weapon(name: "💣 Grenade", damage: 35),
    Weapon(name: "🧱 Bazooka", damage: 40),
    Weapon(name: "🚀 Nuclear bomb", damage: 50)
]

var warTeam1 = Warrior()
var magTeam1 = Magus()
var priTeam1 = Priest()
var warTeam2 = Warrior()
var magTeam2 = Magus()
var priTeam2 = Priest()

var team1 = [warTeam1, magTeam1, priTeam1]
var team2 = [warTeam2, magTeam2, priTeam2]
var createTeam = Game(team1: team1, team2: team2)

createTeam.createTeam()

