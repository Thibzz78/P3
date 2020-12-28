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
        var teamsNames = [String]()
        let countTeam1 : Int
        let countTeam2 : Int
    
    init(team1: [Character], team2: [Character]) {
        self.team1 = team1
        self.team2 = team2
        countTeam1 = team1.count - 1
        countTeam2 = team1.count - 1
    }

    func createTeam(){
        
        askForName(team: team1, teamName: "TEAM1")
        
        askForName(team: team2, teamName: "TEAM2")
        
        showTeams()
        
        startGame()
    }

    private func askForName(team : [Character], teamName : String){
        var i : Int = 0
        let weaponCount = weapons.count - 1
        
        print("Creation of the \(teamName)")
        repeat {
            print("Enter a name for the character :  \(team[i].name)")
            if let name = readLine(){
                if(!teamsNames.contains(name) && name != "" && name != " "){
                    teamsNames.append(name)
                    team[i].name = name
                }else{
                    print("The name is incorrect or already exists\n")
                    continue
                }
            }
            
            print("Choose a weapon for \(team[i].name)")
            
            for i in 0...weaponCount {
                print("\(i) : \(weapons[i].name) \(weapons[i].damage) PA")
            }
            let selected = Int(readLine() ?? "unknow") ?? 6
            switch selected {
            case 0:
                team[i].weapons = weapons[0]
            case 1:
                team[i].weapons = weapons[1]
            case 2:
                team[i].weapons = weapons[2]
            case 3:
                team[i].weapons = weapons[3]
            case 4:
                team[i].weapons = weapons[4]
            case 5:
                team[i].weapons = weapons[5]
            default:
                print("Error: no weapon selected, default weapon : \(team[i].weapons.name) \(team[i].weapons.damage) PA\n")
            }
            i = i + 1
            
        } while i != countTeam1 + 1
    }
    
    
    private func showTeams(){
        print("////////////////////////////////////////////////////////////////")
        print("\(team1[0].name) selected the weapon : \(team1[0].weapons.name) \(team1[0].weapons.damage) PA")
        print("\(team1[1].name) selected the weapon : \(team1[1].weapons.name) \(team1[1].weapons.damage) PA")
        print("\(team1[2].name) selected the weapon : \(team1[2].weapons.name) \(team1[2].weapons.damage) PA")
        print("////////////////////////////////////////////////////////////////")
        print("\(team2[0].name) selected the weapon : \(team2[0].weapons.name) \(team2[0].weapons.damage) PA")
        print("\(team2[1].name) selected the weapon : \(team2[1].weapons.name) \(team2[1].weapons.damage) PA")
        print("\(team2[2].name) selected the weapon : \(team2[2].weapons.name) \(team2[2].weapons.damage) PA")
        print("START GAME !\n")
    }
    
    
    
    func startGame(){
        var totalLifeTeam1 : Int = team1[0].lifePoint + team1[1].lifePoint + team1[2].lifePoint
        var totalLifeTeam2 : Int = team2[0].lifePoint + team2[1].lifePoint + team2[2].lifePoint
        var isTeam1Turn = true
        var team : [Character]
        var adverseTeam : [Character]
        var numberTeam : Int = 1
                
                
        team = team1
        adverseTeam = team2
        
        repeat{
        print("Team \(numberTeam) : please choose a player")
        let selected = chooseCharacter(team: team)
        print("Choose an option")
        if team[selected].canHeal == true{
            print("1 : Attack")
            print("2 : Heal")
        }
            else{
                print("1 : Attack")
            }
            var selected1 = Int(readLine() ?? "Unknow") ?? 0
            switch selected1 {
            case 1:
                selected1 = 1
            case 2:
                if team[selected].canHeal == true{
                selected1 = 2
                }else{
                print("This character cannot heal")
                continue
                }
            default:
                print("Typing error")
                continue
            }
            
            if selected1 == 1{
                print("Select the character you want to attack")
                let sel = chooseCharacter(team: adverseTeam)
                myrandom(char: team[selected])
                team[selected].attaquer(attacked: adverseTeam[sel])
            }
            if selected1 == 2{
                print("Select the character you want to heal")
                let sel = chooseCharacter(team: team)
                let priest = Priest()
                priest.heal(priest: team[2], selected: team[sel])
            }
            totalLifeTeam1 = totalLifePoint(team: team1)
            totalLifeTeam2 = totalLifePoint(team: team2)
            
            turnCount = turnCount + 1
            if isTeam1Turn == true{
                team = team2
                numberTeam = 2
                adverseTeam = team1
                isTeam1Turn = false
            }
            else{
                team = team1
                numberTeam = 1
                adverseTeam = team2
                isTeam1Turn = true
            }
        }while totalLifeTeam1 > 0 && totalLifeTeam2 > 0
        endGame(team1Life: totalLifeTeam1, team2Life: totalLifeTeam2)
    }
    
    func totalLifePoint(team : [Character]) -> Int{
        let teamLife = team[0].lifePoint + team[1].lifePoint + team[2].lifePoint
        return teamLife
    }
    
    
    func chooseCharacter(team : [Character]) -> Int{
        var choose = false
        for i in 0...countTeam1{
            if team[i].lifePoint > 0{
                print("\(i + 1) :\(team[i].name) \(team[i].lifePoint) - \(team[i].weapons.name) \(team[i].weapons.damage)")
            }
        }
        var sel = Int(readLine() ?? "unknow") ?? 0
        repeat{
            switch sel {
            case 1:
                guard team[0].lifePoint <= 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 0
                    choose = true
            case 2:
                guard team[1].lifePoint <= 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 1
                    choose = true
            case 3:
                guard team[2].lifePoint <= 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 2
                    choose = true
            default:
                print("Typing error")
                continue
            }
        }while choose == false
        return sel
    }
    
    func myrandom(char : Character){
        let number = Int.random(in: 0..<10)
        let numberWeaponsAttack = Int.random(in: 0..<75)
        
        if number == 6 || number == 7{
            print("SURPRISE CHEST")
            print("Do you want to open your chest ?")
            print("1. YES")
            print("2. NO")
            let sel = Int(readLine() ?? "Unknow") ?? 0
            switch sel {
            case 1:
                print("Your weapon has now \(numberWeaponsAttack) PA ")
                char.weapons.damage = numberWeaponsAttack
            case 2:
                print("The game continue")
            default:
                print("Typing error. The game continue")
            }
        }
    }
    
    func endGame(team1Life : Int, team2Life: Int){
        print("END GAME !!!!!!")
        if team1Life > 0{
            print("The team 1 won with \(turnCount) laps")
        }else{
            print("The team 2 won with \(turnCount) laps")
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
