//
//  Constants.swift
//  blueMountains
//
//  Created by 21bits on 1/23/25.
//

enum Direction {
    case north
    case south
    case east
    case west
    case up
    case down
    case northeast
    case northwest
    case southeast
    case southwest
}

struct Constants {
    
    // verbList contains all words that should be treated by the parser as commands -
    // these will almost always be the first words in an input string.
    let verbList: [String] = ["look", "examine", "talk", "take", "drop", "use", "inventory", "go", "open", "close", "save", "load", "quit", "exit", "x", "i", "north", "south", "east", "west", "up", "down", "northeast", "northwest", "southeast", "southwest", "n", "s", "e", "w", "u", "d", "ne", "nw", "se", "sw", "climb", "swim", "push", "pull", "yes", "no", "help", "l", "get", "pick", "pickup", "grab", "inv", "q"]
    
    // nounList contains all words that should be treated by the parser as arguments -
    // specifically those that refer to objects that are always present regardless of location.
    // Other, more local nouns will be handled in their respective objects.
    let nounList: [String] = ["self", "room", "around", "myself", "environment", "world"]
}

let constants = Constants() // Don't like this. Is there a way to encapsulate the constants without having to create an instance?
