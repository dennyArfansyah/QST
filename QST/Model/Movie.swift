//
//  Movie.swift
//  QST
//
//  Created by Denny Arfansyah on 28/08/23.
//

import Foundation

struct Movie: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    let rating: Double
    let duration: String
    let genre: String
    let releasedDate: String
    let trailerLink: String
    
    static let movies: [Movie] = Bundle.main.decode("movie.json")
    static let example = movies[0]
}
