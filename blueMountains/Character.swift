//
//  Character.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//

class Character {
    var name: String
    var description: String
    var location: Room
    var traits: [String]
    var inventory: [InventoryObject]
    
    init(name: String, description: String, location: Room, traits: [String]) {
        self.name = name
        self.description = description
        self.location = location
        self.traits = traits
        inventory = []
    }
    
    func printDescription() {
        print(description)
    }
    
    func controlCharacter(with commandLine: [String]) {
        print("You shouldn't be seeing this! Make sure your character overrides the controlCharacter method.")
    }
}

class ControllableCharacter : Character {
    override func controlCharacter(with commandLine: [String]) {
        // Again, we assume the first word is the command.
        
        switch commandLine.first {
            
        case "look", "l", "examine", "x":
            var commandRecognized = false
            
            if commandLine.count == 1 {
                self.location.printDescription()
            } else {
                for word in commandLine {
                    if word == "around" || word == "room" || word == "environment" {
                        self.location.printDescription()
                        commandRecognized = true
                        break
                    } else if word == "self" || word == "myself" || word == "me" || word == "yourself" {
                        self.printDescription()
                        commandRecognized = true
                        break
                    } else {
                        for item in self.inventory {
                            if word.lowercased() == item.name.lowercased() {
                                print(item.inventoryDescription)
                                commandRecognized = true
                                break
                            }
                        }
                    }
                }
                
                // If we come to the last word of the line without any others recognized...
                if !commandRecognized {
                    print("I don't understand.")
                }
            }
            
        case "talk", "speak":
            print("To who?")
            
        case "take", "get", "pick", "pickup", "grab":
            print("What do you want to pick up?")
            
        case "drop":
            print("What do you want to drop?")
            
        case "use":
            var itemNameFound: Bool = false
            
            if commandLine.count == 1{  // The user has not provided an argument...
                print("Use what?")
            } else {
                for word in commandLine {
                    for item in self.inventory {
                        if item.name.lowercased() == word.lowercased() {
                            item.use()
                            itemNameFound = true
                            break
                        }
                    }
                }
                if !itemNameFound {
                    print("You don't have that item.")
                }
            }
            
        case "inventory", "i", "inv" :
            print("You are carrying: ")
            
            for item in self.inventory {
                if !(item === self.inventory.last && self.inventory.count > 1) {
                    print(item.name, terminator: ", ")
                } else {
                    (print("and \(item.name)."))
                }
            }
            
        case "go":
            print("Go where?")
            
        case "open":
            print("Open what?")
            
        case "close":
            print("Close what?")
            
        case "save":
            print("Not implemented yet.")
            
        case "load":
            print("Not implemented yet.")
            
        case "quit", "exit", "q":
            break
            
        case "north", "n":
            print("You move to the north.")
            
        case "south", "s":
            print("You move to the south.")
            
        case "east", "e":
            print("You move to the east.")
            
        case "west", "w":
            print("You move to the west.")
            
        case "up", "u":
            print("You climb up.")
            
        case "down", "d":
            print("You climb down.")
            
        case "northeast", "ne":
            print("You move northeast.")
            
        case "northwest", "nw":
            print("You move northwest.")
            
        case "southeast", "se":
            print("You move southeast.")
            
        case "southwest", "sw":
            print("You move southwest.")
            
        case "climb":
            print("Climb what?")
            
        case "swim":
            print("I don't see any water.")
            
        case "push":
            print("Push what?")
            
        case "pull":
            print("Pull what?")
            
        default:
            print("I don't understand that. (Yet!)")
        }
    }
}
