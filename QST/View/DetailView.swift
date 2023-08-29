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
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading) {
                    HStack(alignment: .lastTextBaseline) {
                        Image(movie.id)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geometry.size.width * 0.3)
                            .shadow(radius: 5)
                            .padding(.top)
                        
                        HStack {
                            Text(movie.title)
                                .foregroundColor(.black)
                            Spacer()
                            Text(movie.ratingValue)
                                .foregroundColor(.gray)
                        }
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.vertical)
                    
                    Text(Constant.shortDescription)
                        .font(.title.bold())
                        .foregroundColor(.black)
                    Text(movie.description)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.vertical)
                    
                    Text(Constant.details)
                        .font(.title.bold())
                        .foregroundColor(.black)
                }
            }
            .padding()
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: Movie.example)
    }
}
