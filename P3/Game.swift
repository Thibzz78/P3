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
        let countTeam1 : Int
        let countTeam2 : Int
    
    init(team1: [Character], team2: [Character]) {
        self.team1 = team1
        self.team2 = team2
        countTeam1 = team1.count - 1
        countTeam2 = team1.count - 1
    }

    func createTeam(){
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
        
        print("\(team1[0].name) a selectionné l'arme : \(team1[0].weapons.name) \(team1[0].weapons.damage) PA")
        print("\(team1[1].name) a selectionné l'arme : \(team1[1].weapons.name) \(team1[1].weapons.damage) PA")
        print("\(team1[2].name) a selectionné l'arme : \(team1[2].weapons.name) \(team1[2].weapons.damage) PA")
        print("////////////////////////////////////////////////////////////////")
        print("////////////////////////////////////////////////////////////////")
        
        
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
        print("\(team2[0].name) a selectionné l'arme : \(team2[0].weapons.name) \(team2[0].weapons.damage) PA")
        print("\(team2[1].name) a selectionné l'arme : \(team2[1].weapons.name) \(team2[1].weapons.damage) PA")
        print("\(team2[2].name) a selectionné l'arme : \(team2[2].weapons.name) \(team2[2].weapons.damage) PA")
        print("////////////////////////////////////////////////////////////////")
        print("////////////////////////////////////////////////////////////////")
        print("DEMARRAGE DE LA PARTIE !")
        startGame()
    }

    func startGame(){
        var totalLifeTeam1 : Int = team1[0].lifePoint + team1[1].lifePoint + team1[2].lifePoint
        var totalLifeTeam2 : Int = team2[0].lifePoint + team2[1].lifePoint + team2[2].lifePoint
        
        repeat{
            print("Team 1 : veuillez choisir un joueur")
            for i in 0...countTeam1{
                if team1[i].lifePoint > 0{
                    print("\(i + 1) :\(team1[i].name) \(team1[i].lifePoint) - \(team1[i].weapons.name) \(team1[i].weapons.damage)")
                }
            }
            var selected = Int(readLine() ?? "Unknow") ?? 0
            switch selected {
            case 1:
                if team1[0].lifePoint > 0{
                    selected = 0
                }else{
                    print("Ce joueur est mort")
                    continue
                }
            case 2:
                if team1[1].lifePoint > 0{
                    selected = 1
                }else{
                    print("Ce joueur est mort")
                    continue
                }
            case 3:
                if team1[2].lifePoint > 0{
                    selected = 2
                }else{
                    print("Ce joueur est mort")
                    continue
                }
            default:
                print("erreur de saisi")
                continue
            }
            print("Choissiez une option")
            if team1[selected].canHeal == true{
                print("1 : Attaquer")
                print("2 : Soigner")
            }
            else{
                print("1 : Attaquer")
            }
            var selected1 = Int(readLine() ?? "Unknow") ?? 0
            switch selected1 {
            case 1:
                selected1 = 1
            case 2:
                if team1[selected].canHeal == true{
                selected1 = 2
                }else{
                print("ce personnage ne peut pas soigner")
                continue
                }
            default:
                print("erreur de saisi")
                continue
            }
            
            if selected1 == 1{
                print("Selectionner le joueur que vous souhaiter attaquer")
                for i in 0...countTeam2{
                    print("\(i + 1) :\(team2[i].name) \(team2[i].lifePoint) - \(team2[i].weapons.name) \(team2[i].weapons.damage)")
                }
                var sel = Int(readLine() ?? "Unknow") ?? 0
                switch sel {
                case 1:
                    sel = 0
                case 2:
                    sel = 1
                case 3:
                    sel = 2
                default:
                    print("erreur de saisi")
                    continue
                }
                team1[selected].attaquer(attacked: team2[sel])
            }
            if selected1 == 2{
                print("selectionner le joueur que vous souhaiter soigner")
                for i in 0...countTeam1{
                print("\(i) :\(team1[i].name) \(team1[i].lifePoint) - \(team1[i].weapons.name) \(team1[i].weapons.damage)")
                }
                var sel = Int(readLine() ?? "Unknow") ?? 0
                switch sel {
                case 1:
                    if team1[0].lifePoint <= 0{
                        print("Ce joueur est mort")
                        continue
                    }else{
                        sel = 0
                    }
                case 2:
                    if team1[1].lifePoint <= 0{
                        print("Ce joueur est mort")
                        continue
                    }else{
                        sel = 1
                    }
                case 3:
                    if team1[2].lifePoint <= 0{
                        print("Ce joueur est mort")
                        continue
                    }else{
                        sel = 2
                    }
                default:
                    print("erreur de saisi")
                    continue
                }
                team1[2].heal(selected: team1[sel])
            }
            totalLifeTeam1 = team1[0].lifePoint + team1[1].lifePoint + team1[2].lifePoint
            totalLifeTeam2 = team2[0].lifePoint + team2[1].lifePoint + team2[2].lifePoint
            turnCount = turnCount + 1
        }while totalLifeTeam1 > 0 || totalLifeTeam2 > 0
        endGame(team1Life: totalLifeTeam1, team2Life: totalLifeTeam2)
    }
    
    func endGame(team1Life : Int, team2Life: Int){
        print("FIN DE LA PARTIE !!!!!!")
        if team1Life > 0{
            print("La team 1 a gagné en \(turnCount) tours")
        }else{
            print("La team 2 a gagné en \(turnCount) tours")
        }
        print("Total Team1 lifePoint : \(team1Life)")
        for i in 0...countTeam1{
            print("\(i + 1) :\(team1[i].name) \(team1[i].lifePoint) - \(team1[i].weapons.name) \(team1[i].weapons.damage)")
        }
        print("Total Team2 lifePoint : \(team2Life)")
        for i in 0...countTeam2{
            print("\(i + 1) :\(team2[i].name) \(team2[i].lifePoint) - \(team2[i].weapons.name) \(team2[i].weapons.damage)")
        }
        return
    }
}
