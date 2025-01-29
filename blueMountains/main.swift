//
//  main.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//


// MARK: Initialization ------------------------------------------

let currentGame = Game(playerCharacter: data.playerCharacter, rooms: data.rooms)
let parser      = TextParser()

// ---------------------------------------------------------

// MARK: Main Loop -----------------------------------------------

// Testing purposes only. Will likely replace with while(true) and exit in the parser.
while !parser.parsedText.contains("QUIT") {
    currentGame.playerCharacter.location.printName()
    
    if !currentGame.playerCharacter.location.wasDescribed {
        currentGame.playerCharacter.location.printDescription()
        currentGame.playerCharacter.location.wasDescribed = true
    }
    parser.getUserInput(prompt:">")
    parser.splitText()
    currentGame.playerCharacter.controlCharacter(with: parser.parseLine())
}
// ---------------------------------------------------------
