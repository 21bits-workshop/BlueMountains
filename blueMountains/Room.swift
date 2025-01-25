//
//  Room.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//
struct RoomConnection {
    let direction: Direction
    let destination: Room
}

class Room {
    let name: String
    let description: String
    var wasDescribed: Bool
    
    var exits: [Direction : Room]
    
    init(name: String, description: String, connections: RoomConnection?...) {
        self.name = name
        self.description = description
        self.wasDescribed = false
        
        self.exits = [:]
        
        for connection in connections {
            if let destination = connection?.destination {
                exits[connection!.direction] = destination
            }
        }
    }
    
    func printDescription() {
        print(description)
        print(exits)
    }
    
    func printName() {
        print("\u{001B}[1m\(name)\u{001B}[0m")
    }
    
    func addConnection(to connection: RoomConnection) {
        self.exits[connection.direction] = connection.destination
    }
    
}
