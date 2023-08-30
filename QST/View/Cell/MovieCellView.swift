//
//  MovieCellView.swift
//  QST
//
//  Created by Denny Arfansyah on 29/08/23.
//

import SwiftUI

struct MovieCellView: View {
    @StateObject var modelData = ModelData()
    let movie: Movie
    var body: some View {
        HStack {
            Image(movie.id)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
                .shadow(radius: 5)

            VStack(alignment: .leading) {
                Text(movie.completeTitle)
                    .font(.headline)
                    .foregroundColor(.black)
                Text(movie.notes)
                    .foregroundColor(.gray)
                if modelData.contains(movie) {
                    Text(Constant.onMyWatchList)
                        .bold()
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCellView(movie: Movie.example)
            .environmentObject(ModelData())
    }
}
