//
//  Team.swift
//  P3
//
//  Created by Thibault Bernard on 07/01/2021.
//

import Foundation


class Team {
    
  var team : [Character]
  var teamName : String
  var teamsNames = [String]()
  let countTeam : Int

    init(team: [Character], teamName : String) {
        self.team = team
        self.teamName = teamName
        self.countTeam = team.count - 1
      }

    // Assign a name to every Character
       func askForName(){
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
              chooseWaepons(team: team, weaponCount: weaponCount, i : i)
              i = i + 1
              
          } while i != countTeam + 1
      }
    
    
      // Assign a waepon to every character
      func chooseWaepons(team : [Character], weaponCount : Int, i : Int){
          var chooseIsCorrect : Bool = false
          repeat{
              print("Choose a weapon for \(team[i].name)")
              
              for i in 0...weaponCount {
                  print("\(i) : \(weapons[i].name) \(weapons[i].damage) PA")
              }
              let selected = Int(readLine() ?? "unknow") ?? 6
              switch selected {
              case 0:
                  team[i].weapons = weapons[0]
                  chooseIsCorrect = true
              case 1:
                  team[i].weapons = weapons[1]
                  chooseIsCorrect = true
              case 2:
                  team[i].weapons = weapons[2]
                  chooseIsCorrect = true
              case 3:
                  team[i].weapons = weapons[3]
                  chooseIsCorrect = true
              case 4:
                  team[i].weapons = weapons[4]
                  chooseIsCorrect = true
              case 5:
                  team[i].weapons = weapons[5]
                  chooseIsCorrect = true
              default:
                  print("Error: no weapon selected")
                  continue
              }
              
          }while chooseIsCorrect == false
      }
      
    
      //displays the properties of each team
       func showTeams(){
          print("////////////////////////////////////////////////////////////////")
          print("\(team[0].name) selected the weapon : \(team[0].weapons.name) \(team[0].weapons.damage) PA")
          print("\(team[1].name) selected the weapon : \(team[1].weapons.name) \(team[1].weapons.damage) PA")
          print("\(team[2].name) selected the weapon : \(team[2].weapons.name) \(team[2].weapons.damage) PA")
          print("////////////////////////////////////////////////////////////////")
        
       
      }
    
    
    func chooseCharacter(team : [Character]) -> Int{
        var choose = false
        repeat{
            for i in 0...countTeam{
                if team[i].lifePoint > 0{
                    print("\(i + 1) :\(team[i].name) \(team[i].lifePoint) - \(team[i].weapons.name) \(team[i].weapons.damage)")
                }
            }
            var sel = Int(readLine() ?? "unknow") ?? 0
            switch sel {
            case 1:
                guard team[0].lifePoint > 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 0
                    choose = true
            case 2:
                guard team[1].lifePoint > 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 1
                    choose = true
            case 3:
                guard team[2].lifePoint > 0 else {
                    print("This character is dead")
                    continue
                }
                    sel = 2
                    choose = true
            default:
                print("Typing error")
                continue
            }
            return sel
        }while choose == false
    }
}
