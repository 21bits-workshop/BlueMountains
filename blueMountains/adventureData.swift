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
        
        // MARK: ROOM DECLARATIONS
        
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
        rooms["Mirror Room 1"] = Room(name: "Mirror Room", description: " ")
        rooms["Mirror Room 2"] = Room(name: "Mirror Room", description: " ")
        rooms["Small Cave"] = Room(name: "Cave", description: "This is a tiny vcave with entrances west and north, and a staircase leading down.")
        rooms["Tiny Cave"] = Room(name: "Cave", description: "This is a tiny cave with entrances west and north, and a dark forbidding startcase leading down.")
        rooms["Cold Passage"] = Room(name: "Cold Passage", description: "This is a cold and damp corridor where a long east-west passageway turns into a soutward path.")
        rooms["Narrow Passage"] = Room(name: "Narrow Passage", description: "This is a long a narrow corridor where a long north-south passageway briefly narrows even further.")
        rooms["Winding Passage"] = Room(name: "Winding Passage", description: "this is a winding passage. It seems that there are only exits on the east and north.")
        rooms["Twisting Passage"] = Room(name: "Twisting Passage", description: "This is a winding passage. It seems that there are only exits on the east and north.")
        rooms["Atlantis Room"] = Room(name: "Atlantis Room", description: "This is an anient room, long under water. There is an exit to the south and a staircase leading up.")
        // Round Room and Vicinity
        rooms["EW Passage"] = Room(name: "East-West Passage", description: "This is a narrow east-west passageway. there is a narrow stairway leading down at the north end of the room.")
        rooms["Round Room"] = Room(name: "Round Room", description: "This is a circular stone room with passages in all directions. Several of them have unfortunately been blocked by cave-ins.")
        rooms["Deep Canyon"] = Room(name: "Deep Canyon", description: " ")
        rooms["Damp Cave"] = Room(name: "Damp Cave", description: "This cave has exits to the west and east, and norrows to a crack toward the south. The earth is particularly damp here.")
        rooms["NS Passage"] = Room(name: "North-South Passage", description: "This is a high north-south passage, which forks to the northesast.")
        rooms["Chasm Room"] = Room(name: "Chasm", description: "A chasm runs southwest to northeast and the path follows it. You are on the south side of the chasm, where a crack opens into a passage.")
        // Hades et al
        rooms["Entrance to Hades"] = Room(name: "Entrance to Hades", description: " ")
        rooms["Land of Living Dead"] = Room(name: "Land of the Dead", description: "You have entered the Land of the Living Dead. Thousands of losy souls can be heard weeping and moaning. In the corner are stacked the remains of dozens of previous adventurers less fortunate than yourself. A passage exits to the north.")
        // Dome, Temple, Egypt
        rooms["Engravings Cave"] = Room(name: "Engravings Cave", description: "You have envered a low cave with passages leading northwest and east.")
        rooms["Egypt Room"] = Room(name: "Egyptian Room", description: "This is a room which looks like an Egyptian tomb. There is an ascending staircase to the west.")
        rooms["Dome Room"] = Room(name: "Dome Room", description: " ")
        rooms["Torch Room"] = Room(name: "Torch Room", description: " ")
        rooms["North Temple"] = Room(name: "Temple", description: "This is the north end of a large temple. On the east wall is an ancient inscription, probably a prayer in a long-forgotten language. below the prayer is a staircase leading down. The west wall is solid granite. The exit to the north end of the room is through huge marble pillars.")
        rooms["South Temple"] = Room(name: "Altar", description: "This is the south end of a large temple. In front of you is what appears to be an altar. In one corner is a small hole in the floor which leads into darkness. you probably could not get back up it.")
        // Flood Control Dam #3
        rooms["Dam Room"] = Room(name: "Dam Room", description: " ")
        rooms["Dam Loby"] = Room(name: "Dam Lobby", description: "This appears to have been the waiting room for groups touring the dam. There are open doorways here to the north and east marked \"Private\", and there is a path leading south over the top of the dam.")
        rooms["Maintenance Room"] = Room(name: "Maintenance Room", description: "This is what appears to have been the maintenance room for Flood Control Dam #3. Apparently, this room has been ransacked recently, for most of the valuable equipment is gone. On the wall in front of you is a group of buttons colord blue, ellow, brown, and red. There are doorways to the west and south.")
        // River Area
        rooms["Dam Base"] = Room(name: "Dam Base", description: "You are at the base of Flood Control Dam #3, which looms abouve you and to the north. the river Frigid is flowing by here. Along the river are the White Cliffs which seem to form giant walls stretching from north to south along the shores of the river as it winds its way downstream.")
        rooms["River 1"] = Room(name: "Frigid River", description: "You are on the Frigid River in the vicinity of the Dam. The river flows quietly here. There is a landing on the west shore.")
        rooms["River 2"] = Room(name: "Frigid River", description: "The river turns a corner here making it impossible to see the Dam. the White Cliffs loom on the east bank and large rocks prevent landing on the west.")
        rooms["River 3"] = Room(name: "Frigid River", description: "The river descends here into a valley. There is a narrow beach on the west shore below the cliffs. In the distance a faint rumbling can be heard.")
        rooms["White Cliffs North"] = Room(name: "White Cliffs Beach", description: "You are on a narrow strip of beach which runs along the base of the White Cliffs. There is a narrow path heading south along the Cliffs and a tight passage leading west into the cliffs themselves.")
        rooms["White Cliffs South"] = Room(name: "White Cliffs Beach", description: "You are on a rocky, narrow strip of beach beside the Cliffs. A narrow path leads north along the shore.")
        rooms["River 4"] = Room(name: "Frigid River", description: "The river is running faster here and the sound ahead appears to be that of rushing water. On the east shore is a sandy beach. A small area of beach can also be seen below the cliffs on the west shore.")
        rooms["River 5"] = Room(name: "Frigid River", description: "The sound of rushing water is nearly unbearable here. On the east shore is a large landing area.")
        rooms["Shore"] = Room(name: "Shore", description: "You are on the east shore of the river. The water here seems somewhat treacherous. A path travels from north to south here, the south end quickly turning around a sharp corner.")
        rooms["Sandy Beach"] = Room(name: "Sandy Beach", description: "You are on a large sandy beach on the east shore of the river, which is flowing quickly by. A path runs beside the river to the south here, and a passage is partially buried in sand to the northeast.")
        
        
        
        playerCharacter = ControllableCharacter(name: "Player", description: "A Player", location: rooms["South of House"]!, traits: [""])
    }
}

let data = adventureData()
