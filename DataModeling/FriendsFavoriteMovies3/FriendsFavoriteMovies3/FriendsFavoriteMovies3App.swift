//
//  FriendsFavoriteMovies3App.swift
//  FriendsFavoriteMovies3
//
//  Created by jardin on 4/12/26.
//

import SwiftUI
import SwiftData

@main
struct FriendsFavoriteMovies2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Movie.self, Friend.self])
    }
}
