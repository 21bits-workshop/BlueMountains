//
//  Room.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//

class Room {
    let name: String
    let description: String
    var wasDescribed: Bool
    
    var exits: [Direction : Room]
    
    // TODO: Create a Struct for room/direction pairs, use them in exitsTo
    init(name: String, description: String, exitsTo: Direction...) {
        self.name = name
        self.description = description
        self.wasDescribed = false
        
        self.exits = [:]
        
        for direction in exitsTo {
            exits[direction] = self // Obviously temporary
        }
    }
    
    func printDescription() {
        print(description)
        print(exits)
    }
    
    func printName() {
        print("\u{001B}[1m\(name)\u{001B}[0m")
    }
}
