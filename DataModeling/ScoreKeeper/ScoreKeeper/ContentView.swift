//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by jardin on 4/9/26.
//

import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

struct ContentView: View {
//    @State private var players: [String] = ["Elisha", "Andre", "Jasmine"]
//    @State private var scores: [Int] = [0, 0, 0]
    
//    var body: some View {
//        ForEach(0..<players.count, id: \.description) { index in
//            TextField("Name", text: $players[index])
//            // Stepper, a control that performs increment and decrement actions
//            Stepper("\(scores[index])", value: $scores[index])
//        }
//        Button("Add Player", systemImage: "plus") {
//            players.append("")
//            scores.append(0)
//        }
//    }
               
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmin", score: 0)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        // Stepper, a control that performs increment and decrement actions
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden() // 스텝퍼 레이블 숨기고 텍스트로 표시
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
