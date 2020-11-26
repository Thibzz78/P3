//
//  Game.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Game{

        var turnCount : Int
        var team1 : [Character]
        var team2 : [Character]
    
    init(turnCount: Int, team1: [Character], team2: [Character]) {
        self.turnCount = turnCount
        self.team1 = team1
        self.team2 = team2
    }
    
    func createTeam(){
        var joueur1 : String
        print("team1 : Joueur 1, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team1[0].name = joueur1
        print("team1 : Joueur 2, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team1[1].name = joueur1
        print("team1 : Joueur 3, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team1[2].name = joueur1
        print("team2 : Joueur 1, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team2[0].name = joueur1
        print("team2 : Joueur 2, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team2[1].name = joueur1
        print("team2 : Joueur 3, rentrer votre nom")
        joueur1 = String(readLine() ?? "Unknow1")
        team2[2].name = joueur1
    }
    
    func startGame(){
        var selected : String
        print("team1 : Selectionner votre joueur\na.\(team1[0].name)\nb.\(team1[1].name)\nc.\(team1[2].name)")
        selected = String(readLine() ?? "Unknow")
        print("qui souhaitez vous attaquer ?\na.\(team2[0].name)\nb.\(team2[1].name)\nc.\(team2[2].name)")
        selected = String(readLine() ?? "Unknow")
    }
    
    func endGame(){
        
    }
}
