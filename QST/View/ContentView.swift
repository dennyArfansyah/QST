//
//  ContentView.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    let movies: [Movie] = Bundle.main.decode(Constant.resource)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies) { movie in
                    NavigationLink {
                        DetailView(movie: movie)
                    } label: {
                        Text(movie.title)
                    }
                }
            }
            .navigationTitle(Constant.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
