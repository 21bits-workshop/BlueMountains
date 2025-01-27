//
//  Character.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//

class Character {
    var name:           String
    var description:    String
    var location:       Room
    var traits:         [String]
    var inventory:      [InventoryObject]
    
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
    func move(direction: Direction) {
        if self.location.exits[direction] != nil {
            self.location = self.location.exits[direction]!
        } else {
            print(strings.noExit)
        }
    }
    
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
                        for item in self.location.inventory {
                            if word.lowercased() == item.name.lowercased() {
                                print(item.description)
                                commandRecognized = true
                                break
                            }
                        }
                        for item in self.location.floor {
                            if word.lowercased() == item.name.lowercased() {
                                print(item.droppedDescription ?? "")
                                commandRecognized = true
                                break
                            }
                        }
                    }
                }
                
                // If we come to the last word of the line without any others recognized...
                if !commandRecognized {
                    print(strings.commandNotRecognized)
                }
            }
            
        case "talk", "speak":
            print(strings.noTalkTarget)
            
        case "take", "get", "pick", "pickup", "grab":
            var itemNameFound: Bool = false
            
            if commandLine.count == 1 {
                print(strings.noPickupTarget)
            } else {
                for word in commandLine {
                    for item in self.location.inventory {
                        if item is InventoryObject {
                            if item.name.lowercased() == word.lowercased() {
                                self.inventory.append(item as! InventoryObject)
                                self.location.inventory.removeAll(where: {$0 === item})
                                itemNameFound = true
                                break
                            }
                        }
                        // TODO: Deal with attempting to pickup SceneryObjects
                    }
                }
                for word in commandLine {
                    for item in self.location.floor {
                        if item.name.lowercased() == word.lowercased() {
                            self.inventory.append(item)
                            self.location.inventory.removeAll(where: {$0 === item})
                            itemNameFound = true
                            break
                        }
                    }
                }
                if !itemNameFound {
                    print(strings.invalidPickupTarget)
                }
            }
            
        case "drop":
            var itemNameFound: Bool = false
            
            if commandLine.count == 1 {
                print(strings.noDropTarget)
            } else {
                for word in commandLine {
                    for item in self.inventory {
                            if item.name.lowercased() == word.lowercased() {
                                self.location.floor.append(item)
                                self.inventory.removeAll(where: {$0 === item})
                                print(strings.dropMessagePrefix + "\(item.name)" + strings.dropMessageSuffix)
                                itemNameFound = true
                                break
                            }
                    }
                }
                if !itemNameFound {
                    print(strings.invalidDropTarget)
                }
            }
            
        case "use":
            var itemNameFound: Bool = false
            
            if commandLine.count == 1{  // The user has not provided an argument...
                print(strings.noUseTarget)
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
                    print(strings.invalidUseTarget)
                }
            }
            
        case "inventory", "i", "inv" :
            print(strings.inventoryMessagePrefix, terminator: " ")
            
            for item in self.inventory {
                if !(item === self.inventory.last && self.inventory.count > 1) {
                    print(item.name, terminator: ", ")
                } else {
                    (print("and \(item.name)."))
                }
            }
            
        case "go":
            if commandLine.count == 1 {
                print(strings.noGoTarget)
            } else {
                for word in commandLine {
                    if constants.directionList.contains(word.lowercased()) {
                        switch word.lowercased() {
                        case "north", "n":
                            move(direction: .north)
                        case "south", "s":
                            move(direction: .south)
                        case "east", "e":
                            move(direction: .east)
                        case "west", "w":
                            move(direction: .west)
                        case "up", "u":
                            move(direction: .up)
                        case "down", "d":
                            move(direction: .down)
                        case "northeast", "ne":
                            move(direction: .northeast)
                        case "southwest", "sw":
                            move(direction: .southwest)
                        case "northwest", "nw":
                            move(direction: .northwest)
                        case "southeast", "se":
                            move(direction: .southeast)
                        default:
                            print(strings.invalidGoTarget)
                        }
                    }
                }
            }
        case "open":
            print(strings.noOpenTarget)
            
        case "close":
            print(strings.noCloseTarget)
            
        case "save":
            print("Not implemented yet.")
            
        case "load":
            print("Not implemented yet.")
            
        case "quit", "exit", "q":
            break
            
        case "north", "n":
            move(direction: .north)
            
        case "south", "s":
            move(direction: .south)
            
        case "east", "e":
            move(direction: .east)
            
        case "west", "w":
            move(direction: .west)
            
        case "up", "u":
            move(direction: .up)
            
        case "down", "d":
            move(direction: .down)
            
        case "northeast", "ne":
            move(direction: .northeast)
            
        case "northwest", "nw":
          move(direction: .northwest)
            
        case "southeast", "se":
            move(direction: .southeast)
            
        case "southwest", "sw":
            move(direction: .southwest)
            
        case "climb":
            print(strings.noClimbTarget)
            
        case "swim":
            print(strings.invalidSwimTarget)
            
        case "push":
            print(strings.invalidPushTarget)
            
        case "pull":
            print(strings.invalidPullTarget)
            
        default:
            print(strings.commandNotRecognized)
        }
    }
}
