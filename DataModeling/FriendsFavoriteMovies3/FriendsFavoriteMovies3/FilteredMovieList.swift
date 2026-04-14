//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies3
//
//  Created by jardin on 4/14/26.
//

import SwiftUI
import SwiftData

struct FilteredMovieList: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationSplitView {
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
// 검색 바가 시뮬레이터에서 안 뜨길래.. 임시로 수정한 코드
//        NavigationStack {
//            MovieList(titleFilter: searchText)
//                .navigationTitle("Movies")
//                .searchable(text: $searchText)
//        }
    }
}

#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
