//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by jardin on 4/12/26.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var favoriteMovie: Movie? // 있을 수도 없을 수도
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Elena"),
        Friend(name: "Graham"),
        Friend(name: "Mayuri"),
        Friend(name: "Rich"),
        Friend(name: "Rody"),
        
    ]
}
