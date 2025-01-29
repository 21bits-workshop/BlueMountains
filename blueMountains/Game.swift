//
//  Game.swift
//  blueMountains
//
//  Created by 21bits on 1/23/25.
//

class Game {
    
    var playerCharacter: Character
    var rooms : [String: Room] = [:]

    init(playerCharacter: Character, rooms: [String: Room]) {
        self.playerCharacter = playerCharacter
        self.rooms = rooms
    }
}
