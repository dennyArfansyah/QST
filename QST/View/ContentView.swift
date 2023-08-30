//
//  ContentView.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var modelData = ModelData()
    let movies: [Movie] = Bundle.main.decode(Constant.resource)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies) { movie in
                    NavigationLink {
                        DetailView(movie: movie)
                    } label: {
                        MovieCellView(modelData: modelData, movie: movie)
                    }
                }
            }
            .navigationTitle(Constant.title)
        }
        .environmentObject(modelData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
