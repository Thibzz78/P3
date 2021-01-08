//
//  Game.swift
//  P3
//
//  Created by Thibault Bernard on 24/11/2020.
//

import Foundation

class Game{

        var turnCount : Int = 0
        var teams = [Team]()
    


    func createTeam(){
        
        for i in 0...1 {
            
            let myteam = CreateCharactere(numTeam: i)
            
            let team = Team(team: myteam, teamName: "TEAM\(i+1)")
            teams.append(team)
            
            team.askForName()
            
            team.showTeams()
        }
        
        print("START GAME !\n")
        startGame()
     }
    
    private func CreateCharactere(numTeam : Int) -> [Character] {
        var mCharacteres = [Character]()
        
         print("TEAM\(numTeam+1), Select your Character")
        
         print("1-priest")
         print("2-warrior")
         print("3-magus")
         print("4-Chevalier")
     
        repeat{
        let selected = Int(readLine() ?? "Unknow") ?? 0
        switch selected {
        case 1:
            if numTeam == 0 {
                mCharacteres.append(priest)
            }else{
                mCharacteres.append(priest2)
            }
        case 2:
            if numTeam == 0 {
                mCharacteres.append(warrior)
            }else{
                mCharacteres.append(warrior2)
            }
        case 3:
            if numTeam == 0 {
                mCharacteres.append(magus)
            }else{
            mCharacteres.append(magus2)
            }
        case 4:
            if numTeam == 0 {
                mCharacteres.append(chevalier)
            }else{
            mCharacteres.append(chevalier2)
            }
        default:
            print("Error, please retry")
            continue
        }
            
        } while (mCharacteres.count < 3)
       
        return mCharacteres
      
    }
    
    
    func startGame(){
        var isTeam1Turn = true
        
        var team = teams[0]
        var adverseTeam = teams[1]
        
        var numberTeam : Int = 1
        
        repeat{
        print("Team \(numberTeam) : please choose a player")
            let selected = team.chooseCharacter(team: team.team)
        print("Choose an option")
            if team.team[selected].canHeal == true{
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
                if team.team[selected].canHeal == true{
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
                let sel = team.chooseCharacter(team: adverseTeam.team)
                randomChest(char: team.team[selected])
                team.team[selected].attack(attacked: adverseTeam.team[sel])
            }
            if selected1 == 2{
                print("Select the character you want to heal")
                let sel = team.chooseCharacter(team: team.team)
                let priest = Priest()
                priest.heal(priest: team.team[2], selected: team.team[sel])
            }

            turnCount = turnCount + 1
            if isTeam1Turn == true{
                 team = teams[1]
                 adverseTeam = teams[0]
                numberTeam = 2
                isTeam1Turn = false
            }
            else{
                 team = teams[0]
                 adverseTeam = teams[1]
                numberTeam = 1
                isTeam1Turn = true
            }
        }while totalLifePoint(team : teams[0].team) > 0 && totalLifePoint(team : teams[1].team) > 0
        
        endGame(team1Life: totalLifePoint(team: teams[0].team), team2Life: totalLifePoint(team: teams[1].team))
    }
    
    func totalLifePoint(team : [Character]) -> Int{
        let teamLife = team[0].lifePoint + team[1].lifePoint + team[2].lifePoint
        return teamLife
    }

    
    // random chest
    func randomChest(char : Character){
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
        for i in 0...2{
            print("\(i + 1) :\(teams[0].team[i].name) \(teams[0].team[i].lifePoint) - \(teams[0].team[i].weapons.name) \(teams[0].team[i].weapons.damage)")
        }
        
        print("Total Team2 lifePoint : \(team2Life)")
        for i in 0...2{
            print("\(i + 1) :\(teams[1].team[i].name) \(teams[1].team[i].lifePoint) - \(teams[1].team[i].weapons.name) \(teams[1].team[i].weapons.damage)")
        }
    }
}
