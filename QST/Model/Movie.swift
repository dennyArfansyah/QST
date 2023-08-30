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
    let trailerId: String
    var isWatchlist: Bool
    
    static let movies: [Movie] = Bundle.main.decode(Constant.resource)
    static let example = movies[1]
    
    var notes: String { 
        duration + Constant.dash + genre
    }
    
    var ratingValue: String {
        "\(rating)/10"
    }
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Constant.standardFormatDate

        let date = dateFormatter.date(from: releasedDate) ?? Date()

        let dateComponent = Calendar.current.dateComponents([.year], from: date)
        return String(format: "%d", dateComponent.year ?? 2015)
    }
    
    var completeTitle: String {
        return title + " (\(dateString))"
    }
    
    var details: [Detail] {
        [
            Detail(imageName: Constant.durationImage, detailKey: Constant.duration, detailValue: duration),
            Detail(imageName: Constant.genreImage, detailKey: Constant.genre, detailValue: genre)
        ]
    }
    
}
