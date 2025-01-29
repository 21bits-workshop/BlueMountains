//
//  Game.swift
//  blueMountains
//
//  Created by 21bits on 1/23/25.
//

class Game {
    
    var playerCharacter: Character
    var rooms : [Room] = []

    init(playerCharacter: Character, rooms: [Room]) {
        self.playerCharacter = playerCharacter
        self.rooms = rooms
    }
}
