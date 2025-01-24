//
//  main.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//


// Initialization ------------------------------------------
let testRoom = Room(name: "Test Room", description: "You are in a test room. It's dark in here.", exitsTo: .north, .south, .east, .west)
let testPlayer = ControllableCharacter(name: "test player", description: "this is a test player", location: testRoom, traits: [])
let testCharacter = ControllableCharacter(name: "test character", description: "this is a test character", location: testRoom, traits: [])

let testInventoryItem = InventoryObject(name: "Si", description: "It's just a smooth round orb", isConsumable: false, useFunction: {
    print("You rub the si. It's smooth and cold.")
})

let testInventoryItem2 = InventoryObject(name: "Elsi", description: "It's just a rough cube", isConsumable: false, useFunction: {
    print("You rub the elsi. It's rough.")
})

let testInventoryItem3 = InventoryObject(name: "Ni", description: "It's just a box", isConsumable: false, useFunction: {
    print("You rub the box. Why?")
})

testPlayer.inventory.append(testInventoryItem)
testPlayer.inventory.append(testInventoryItem2)
testPlayer.inventory.append(testInventoryItem3)

let currentGame = Game(playerCharacter: testPlayer)

let parser = TextParser()
// ---------------------------------------------------------

// Main Loop -----------------------------------------------

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
