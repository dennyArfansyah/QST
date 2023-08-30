//
//  YouTubeCellView.swift
//  QST
//
//  Created by Denny Arfansyah on 30/08/23.
//

import SwiftUI

struct YouTubeCellView: View {
    let idTrailer: String
    var body: some View {
        PlayerView(id: idTrailer)
            .frame(height: 300)
    }
}

struct YoutubeView_Previews: PreviewProvider {
    static var previews: some View {
        YouTubeCellView(idTrailer: Constant.idTrailerSample)
    }
}
