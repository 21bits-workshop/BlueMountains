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
    
    var exits: [String : Room]
    
    // TODO: Create an Enum for directions.
    // TODO: Create a Struct for room/direction pairs, use them in exitsTo
    init(name: String, description: String, exitsTo: String...) {
        self.name = name
        self.description = description
        self.wasDescribed = false
        
        self.exits = [:]
        
        for direction in exitsTo {
            exits[direction] = self
        }
    }
    
    func printDescription() {
        print(description)
        print(exits)
    }
}
