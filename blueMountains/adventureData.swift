//
//  adventureData.swift
//  blueMountains
//
//  Created by 21bits on 1/28/25.
//

class adventureData {
    var rooms: [String: Room] = [:]
    var playerCharacter: ControllableCharacter!
    
    init() {
        // Forest and Outside House
        rooms["West of House"] = Room(name: "West of House", description: " ")
        rooms["Stone Barrow"] = Room(name: "Stone Barrow", description: "You are standing in front of a massive barrow of stone. In the east face is a huge stoe door which is open. You cannot see into the dark of the tomb.")
        rooms["North of House"] = Room(name: "North of House", description: "You are facing the north side of a white house. There is no door here, and all the windows are boarded up. To the north a narrow path winds through the trees.")
        rooms["South of House"] = Room(name: "South of House", description: "You are facing the south side of a white house. There is no door here, and all the windows are boarded.")
        rooms["East of House"] = Room(name: "East of House", description: " ")
        rooms["Forest 1"] = Room(name: "Forest", description: "This is a forest, with trees in all directions. To the east, there appears to be sunlight.")
        rooms["Forest 2"] = Room(name: "Forest", description: "This is a dimly lit forest, with large trees all around.")
        rooms["Mountains"] = Room(name: "Forest", description: "The forest thins out, revealing impassable mountains.")
        rooms["Forest 3"] = Room(name: "Forest", description: "This is a dimly lit forest, with large trees all around.")
        rooms["Path"] = Room(name: "Forest Path", description: "This is a path winding through a dimly lit forest. The path heads north-south here. One particularly large tree with some low branches stands at the edge of the path.")
        rooms["Up a Tree"] = Room(name: "Up a Tree", description: " ")
        rooms["Grating Clearing"] = Room(name: "Clearing", description: " ")
        rooms["Clearing"] = Room(name: "Clearing", description: "You are in a mall clearing in a well marked forest path that extends to the east and west.")
        // House
        rooms["Kitchen"] = Room(name: "Kitchen", description: " ")
        rooms["Attic"] = Room(name: "Attic", description: "This is the attic. Tho only exit is a stairway leading down.")
        rooms["Living Room"] = Room(name: "Living Room", description: " ")
        // Cellar and Vicinity
        rooms["Cellar"] = Room(name: "Cellar", description: " ")
        rooms["Troll Room"] = Room(name: "The Troll Room", description: "This is a small room with passages to the east and south and a forbidding hole leading west. bloodstains and deep scratches (perhaps made by an axe) mar the walls.")
        rooms["East of Chasm"] = Room(name: "East of Chasm", description: "Tou are on the east edge of a chasm, the bottom of which cannot be seen. A narrow passage goes north, and the path you are on continues to the east.")
        rooms["Gallery"] = Room(name: "Gallery", description: "This is an art gallery. Most of the paintings have been stolen by vandals with exceptional taste. The vandals left through either the north of west exits.")
        rooms["Studio"] = Room(name: "Studio", description: "This appears to have been an artist's studio. The walls and floors are splattered with paints of 69 different colors. Strangely enough, nothing of value is hanging here. At the south end of the room is a open door (also covered with paint). A dark and narrow chimney leads up froma fireplace; although you might be able to get up it, it seems unlikely you could get back down.")
        // Maze
        rooms["Maze 1"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 2"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 3"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 4"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Dead End 1"] = Room(name:"Dead End", description: "You have come to a dead end in the maze.")
        rooms["Maze 5"] = Room(name: "Maze", description: "this is part of a maze of twisty little passages, all alike. A skeleton, probably the remains of a luckless adventurer, lies here.")
        rooms["Dead End 2"] = Room(name: "Dead End", description: "You have come to a dead end in the maze.")
        rooms["Maze 6"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 7"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 8"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Dead End 3"] = Room(name: "Dead End", description: "You have come to a dead end in the maze.")
        rooms["Maze 9"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 10"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 11"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Grating Room"] = Room(name: "Grating Room", description: " ")
        rooms["Maze 12"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Dead End 4"] = Room(name: "Dead End", description: "You have come to a dead end in the maze.")
        rooms["Maze 13"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 14"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        rooms["Maze 15"] = Room(name: "Maze", description: "This is part of a maze of twisty little passages, all alike.")
        // Cyclops and Hideaway
        rooms["Cyclops Room"] = Room(name: "Cyclops Room", description: " ")
        rooms["Strange Passage"] = Room(name: "Strange Passage", description: "This is a long passage. to the west is one entrance. On the east ther is an old wooden door, with a large opening in it (about cyclops sized).")
        rooms["Treasure Room"] = Room(name: "Treasure Room", description: "This is a large room, whose east wall is solid granite. A number of discarded bags, which crumble at your touch, are scattered about on the floor. There is an exit down a staircase.")
        // Reservoir Area
        rooms["Reservoir South"] = Room(name: "Reservoir South", description: " ")
        rooms["Reservoir"] = Room(name: "Reservoir", description: " ")
        rooms["Reservoir North"] = Room(name: "Reservoir North", description: " ")
        rooms["Stream View"] = Room(name: "Stream View", description: "You are standing on a path beside a gently flowing stream. The path follows the stream, which flows from west to east.")
        rooms["In Stream"] = Room(name: "Stream", description: "You are on the gently flowing stream. The upstream route is too narrow to navigate, and the downstream rout is invisible due to twisting walls. There is a narrow beach to land on.")
        // Mirror Rooms and Vicinity
        
        playerCharacter = ControllableCharacter(name: "Player", description: "A Player", location: rooms["South of House"]!, traits: [""])
    }
}

let data = adventureData()
