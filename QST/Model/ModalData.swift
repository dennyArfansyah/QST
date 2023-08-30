//
//  ModalData.swift
//  QST
//
//  Created by Denny Arfansyah on 30/08/23.
//

import Foundation

class ModelData: ObservableObject {
    private var movies: Set<String>

    init() {
        movies = []
    }

    func contains(_ movie: Movie) -> Bool {
        movies.contains(movie.id)
    }

    func add(_ movie: Movie) {
        objectWillChange.send()
        movies.insert(movie.id)
    }

    func remove(_ movie: Movie) {
        objectWillChange.send()
        movies.remove(movie.id)
    }
}
