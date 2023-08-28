//
//  DetailView.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import SwiftUI

struct DetailView: View {
    let movie: Movie
    var body: some View {
        Text(movie.description)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: Movie.example)
    }
}
