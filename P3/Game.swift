//
//  Game.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Game{

        var turnCount : Int = 0
        var team1 : [Character]
        var team2 : [Character]
    
    init(team1: [Character], team2: [Character]) {
        self.team1 = team1
        self.team2 = team2
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func createTeam(){
        let countTeam1 = team1.count - 1
        let countTeam2 = team2.count - 1
        var i : Int = 0
        let weaponCount = weapons.count - 1
        
        print("Creation team1")
        repeat {
            print("Entrer un nom pour le personnage \(team1[i].name)")
            if let name = readLine(){
                if i == 0 && name != "" && name != " " && name != team1[1].name && name != team1[2].name{
                    team1[i].name = name
                }
                else if i == 1 && name != "" && name != " " && name != team1[0].name && name != team1[2].name{
                    team1[i].name = name
                }
                else if i == 2 && name != "" && name != " " && name != team1[0].name && name != team1[1].name{
                    team1[i].name = name
                }
                else{
                    print("le nom est incorrect ou existe déjà")
                    continue
                }
            }
            
            print("choisir une arme pour \(team1[i].name)")
            
            for i in 0...weaponCount {
                print("\(i) : \(weapons[i].name) \(weapons[i].damage) PA")
            }
            let selected = Int(readLine() ?? "unknow") ?? 6
            switch selected {
            case 0:
                team1[i].weapons = weapons[0]
            case 1:
                team1[i].weapons = weapons[1]
            case 2:
                team1[i].weapons = weapons[2]
            case 3:
                team1[i].weapons = weapons[3]
            case 4:
                team1[i].weapons = weapons[4]
            case 5:
                team1[i].weapons = weapons[5]
            default:
                print("erreur : aucune arme selectionné, arme par default : \(team1[i].weapons.name) \(team1[i].weapons.damage) PA")
            }
            i = i + 1
            
        } while i != countTeam1 + 1
        
        print("\(team1[0].name) a selectionné l'arme : \(team1[0].weapons.name)")
        print("\(team1[1].name) a selectionné l'arme : \(team1[1].weapons.name)")
        print("\(team1[2].name) a selectionné l'arme : \(team1[2].weapons.name)")
        print("////////////////////////////////////////////////////////////////")
        print("////////////////////////////////////////////////////////////////")
        
        
        
        
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        
        
        i = 0
        print("Creation team2")
        repeat {
            print("Entrer un nom pour le personnage \(team2[i].name)")
            if let name = readLine(){
                if name == team1[0].name || name == team1[1].name || name == team1[2].name{
                    print("le nom existe déjà dans la team1")
                    continue
                }
                else if i == 0 && name != "" && name != " " && name != team2[1].name && name != team2[2].name{
                    team2[i].name = name
                }
                else if i == 1 && name != "" && name != " " && name != team2[0].name && name != team2[2].name{
                    team2[i].name = name
                }
                else if i == 2 && name != "" && name != " " && name != team2[0].name && name != team2[1].name{
                    team2[i].name = name
                }
                else{
                    print("le nom est incorrect ou existe déjà")
                    continue
                    }
                }

            print("choisir une arme pour \(team2[i].name)")
            
            for i in 0...weaponCount {
                print("\(i) : \(weapons[i].name) \(weapons[i].damage) PA")
            }
            let selected = Int(readLine() ?? "unknow") ?? 0
            switch selected {
            case 0:
                team2[i].weapons = weapons[0]
            case 1:
                team2[i].weapons = weapons[1]
            case 2:
                team2[i].weapons = weapons[2]
            case 3:
                team2[i].weapons = weapons[3]
            case 4:
                team2[i].weapons = weapons[4]
            case 5:
                team2[i].weapons = weapons[5]
            default:
                print("erreur : aucune arme selectionné, arme par default : \(team2[i].weapons)")
            }
            i = i + 1
            
        } while i != countTeam2 + 1
        print("\(team2[0].name) a selectionné l'arme : \(team2[0].weapons.name)")
        print("\(team2[1].name) a selectionné l'arme : \(team2[1].weapons.name)")
        print("\(team2[2].name) a selectionné l'arme : \(team2[2].weapons.name)")
        print("////////////////////////////////////////////////////////////////")
        print("////////////////////////////////////////////////////////////////")
        print("DEMARRAGE DE LA PARTIE !")
        startGame()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func startGame(){
        print("Pouet")
        // boucle sur team 1 ( selectionner le joueur, check point de vie, check canHeal)
        // selectionner le joueur a attaquer
        // lancer la func attaquer
        endGame()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func endGame(){
        print("POUETTTTTT")
    }
}
