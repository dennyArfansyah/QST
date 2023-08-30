//
//  ContentView.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var modelData = ModelData()
    @State private var selected = Constant.titleSort

    var sortedMovies: [Movie] {
        let movies: [Movie] = Bundle.main.decode(Constant.resource)
        if selected == Constant.titleSort {
            return movies.sorted {
                $0.title < $1.title
            }
        } else {
            return movies.sorted {
                $0.releasedDate < $1.releasedDate
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sortedMovies) { movie in
                    NavigationLink {
                        DetailView(movie: movie)
                    } label: {
                        MovieCellView(modelData: modelData, movie: movie)
                    }
                }
            }
            .navigationTitle(Constant.title)
            .toolbar {
                Menu(content: {
                    Picker(Constant.sort, selection: $selected) {
                        ForEach(Constant.sorts, id: \.self) { selected in
                            Text(selected)
                        }
                    }
                },
                label: {
                    Label(Constant.sortBy, systemImage: Constant.sortImage)
                })
            }
        }
        .environmentObject(modelData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
