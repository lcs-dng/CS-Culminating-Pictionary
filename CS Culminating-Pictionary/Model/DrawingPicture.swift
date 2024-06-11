//
//  DrawingPicture.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-06-06.
//

import Foundation

struct DrawingPicture {
    var name: String
    
    var description: String
}

let picture1 = DrawingPicture(name: "abstractDragon", description: "Dragon")
let picture2 = DrawingPicture(name: "goldenGateBridge", description: "Golden Gate Bridge")
let picture3 = DrawingPicture(name: "defenestration", description: "Defenestration")

let possiblePictures = [
    picture1,
    picture2,
    picture3,
]
