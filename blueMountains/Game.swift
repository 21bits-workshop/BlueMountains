//
//  Game.swift
//  blueMountains
//
//  Created by 21bits on 1/23/25.
//

class Game {
    
    let testInventoryItem = InventoryObject(name: "Si", description: "It's just a smooth round orb", isConsumable: false, inventoryDescription: "This constructor is getting very long.", useFunction: {
        print("You rub the si. It's smooth and cold.")
    })

    let testInventoryItem2 = InventoryObject(name: "Elsi", description: "It's just a rough cube", isConsumable: false, inventoryDescription: "There's probably a more elegant way to do this...", useFunction: {
        print("You rub the elsi. It's rough.")
    })

    let testInventoryItem3 = InventoryObject(name: "Ni", description: "It's just a box", isConsumable: false, inventoryDescription: "... but that's future me's problem.", droppedDescription: "It's a Ni that's been dropped on the floor. How careless!", useFunction: {
        print("You rub the box. Why?")
    })
    
    let testPickupitem = InventoryObject(name: "floorthing", description: "you found it on the floor", isConsumable: false, inventoryDescription: "it's in your inventory now", useFunction: {
        print("Yep, that works.")
    })
    
    var playerCharacter: Character
    
    init() {
        
        let testRoom = Room(name: "Test Room", description: "You are in a test room. It's dark in here.")
        let testDiningRoom = Room(name: "Dining Room", description: "You are in a lavish dining room, with a long table set for at least a dozen guests.")

        testRoom.connectRoomMutually(in: .south, to: testDiningRoom)

        let testPlayer = ControllableCharacter(name: "test player", description: "this is a test player", location: testRoom, traits: [])
        
        self.playerCharacter = testPlayer
        
        self.playerCharacter.inventory.append(self.testInventoryItem)
        self.playerCharacter.inventory.append(self.testInventoryItem2)
        self.playerCharacter.inventory.append(self.testInventoryItem3)
        
        testRoom.addGameObject(gameObject: self.testPickupitem)

    }
}
