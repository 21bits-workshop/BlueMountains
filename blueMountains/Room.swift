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
    let name:           String              // The short name of the Room. Will appear before the input prompt.
    let description:    String              // A longer description of the Room. Will appear on first entering the room, and on looking around.
    
    var wasDescribed:   Bool                // Has the room been automatically described before?
    
    var exits:          [Direction : Room]  // A dictionary containing all destination Rooms reachable from this Room. Keys are Directions.
    var inventory:      [GameObject]        // Contains all objects in their original locations in the room, these will print their original descriptions.
    var floor:          [InventoryObject]   // Contains all objects that have previously been in the player inventory and then were dropped. Will print
                                            // their droppedDescription.
    
    init(name: String, description: String, connections: RoomConnection?...) {
        self.name           = name
        self.description    = description
        self.wasDescribed   = false
        
        self.exits          = [:]
        self.inventory      = []
        self.floor          = []
        
        for connection in connections {
            if let destination = connection?.destination {
                exits[connection!.direction] = destination
            }
        }
    }
    
    func printDescription() {
        print(description)
        print(exits)
        print("TEST: Room inventory contains:", terminator: " ")
        for item in self.inventory {
            print(item.name, terminator: ", ")
        }
        print("\n")
        print("TEST: Room floor contains:", terminator: " ")
        for item in self.floor {
            print(item.name, terminator: ", ")
        }
        print("\n")
    }
    
    func printName() {
        print("\u{001B}[1m\(name)\u{001B}[0m")
    }
    
    func addConnection(to connection: RoomConnection) {
        self.exits[connection.direction] = connection.destination
    }
    
    func addGameObject (gameObject: GameObject) {
        self.inventory.append(gameObject)
    }
}
