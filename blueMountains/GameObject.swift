//
//  Object.swift
//  blueMountains
//
//  Created by 21bits on 1/24/25.
//

class GameObject {
    let name : String
    let description : String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

class SceneryObject : GameObject {
    var properties : [String] = []
}

class InventoryObject : GameObject {
    var isConsumable : Bool = false
    var useFunction: () -> Void = {}
    
    init(name: String, description: String, isConsumable: Bool, useFunction: @escaping () -> Void) {
        super.init(name: name, description: description)
        self.isConsumable = isConsumable
        self.useFunction = useFunction
    }
    
    func use() {
        useFunction()
    }
}
