//
//  DetailView.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import SwiftUI

struct DetailView: View {
    let movie: Movie
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        YouTubeCellView(idTrailer: movie.trailerId)
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(movie.title)
                                        .font(.title.bold())
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text(movie.ratingValue)
                                        .font(.title)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        .padding()
                        Text(movie.description)
                            .foregroundColor(.black)
                            .padding([.leading, .trailing])
                        
                        Section {
                            ForEach(movie.details, id: \.self) { detail in
                                DetailCellView(detail: detail)
                            }
                        }
                    }
                }
            }
            .toolbar {
                Button {
                    addRemoveWatchlist()
                } label: {
                    let image = modelData.contains(movie) ? Constant.removeWatchlist : Constant.addWatchlist
                    let color = modelData.contains(movie) ? Color.red : Color.blue
                    Image(systemName: image)
                        .foregroundColor(color)
                }
            }
        }
    }
    
    private func addRemoveWatchlist() {
        if modelData.contains(movie) {
            modelData.remove(movie)
        } else {
            modelData.add(movie)
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(movie: Movie.example)
        }
        .environmentObject(ModelData())
    }
}
