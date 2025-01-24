//
//  main.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//


// Initialization ------------------------------------------
let testRoom = Room(name: "Test Room", description: "You are in a test room. It's dark in here.", exitsTo: "north", "south", "east", "west")
let testPlayer = ControllableCharacter(name: "test player", description: "this is a test player", location: testRoom, traits: [])
let testCharacter = ControllableCharacter(name: "test character", description: "this is a test character", location: testRoom, traits: [])

let currentGame = Game(playerCharacter: testPlayer)

let parser = TextParser()
// ---------------------------------------------------------

// Main Loop -----------------------------------------------

// Testing purposes only. Will likely replace with while(true) and exit in the parser.
while !parser.parsedText.contains("QUIT") {
    if !currentGame.playerCharacter.location.wasDescribed {
        currentGame.printPlayerLocationDescription()
        currentGame.playerCharacter.location.wasDescribed = true
    }
    parser.getUserInput(prompt:">")
    parser.splitText()
    currentGame.playerCharacter.controlCharacter(with: parser.parseLine())
}
// ---------------------------------------------------------
