//
//  Room.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//

class Room {
    let description: String
    var wasDescribed: Bool
    
    init(description: String) {
        self.description = description
        self.wasDescribed = false
    }
    
    func printDescription() {
        print(description)
    }
}
