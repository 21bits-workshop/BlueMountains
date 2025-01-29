//
//  adventureData.swift
//  blueMountains
//
//  Created by 21bits on 1/28/25.
//

class adventureData {
    var rooms: [Room] = []
    var playerCharacter: ControllableCharacter!
    
    init() {
        rooms.append(Room(name: "Outside the House", description: "You are outside the house", connections: nil))
        rooms.append(Room(name: "Inside the House", description: "You are inside the house", connections: nil))
        rooms[0].connectRoomMutually(in: .north, to: rooms[1])
        
        playerCharacter = ControllableCharacter(name: "Player", description: "You are an AFGNCAAP.", location: rooms[0], traits: [""])
    }
}

let data = adventureData()
