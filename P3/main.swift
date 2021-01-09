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

var warrior = Warrior()
var magus = Magus()
var priest = Priest()
var chevalier = Chevalier()

var warrior2 = Warrior()
var magus2 = Magus()
var priest2 = Priest()
var chevalier2 = Chevalier()

var game = Game()
var teamsNames = [String]()

game.createTeam()
