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
        HStack(alignment: .top) {
            Image(movie.id)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 200)
                .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                    .foregroundColor(.black)
                Text(movie.notes)
                    .font(.caption)
                    .foregroundColor(.gray)
                if modelData.contains(movie) {
                    Text(Constant.onMyWatchList)
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.top)
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
