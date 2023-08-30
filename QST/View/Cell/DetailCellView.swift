//
//  DetailCellView.swift
//  QST
//
//  Created by Denny Arfansyah on 30/08/23.
//

import SwiftUI

struct DetailCellView: View {
    let detail: Detail
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .center) {
                Image(systemName: detail.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 25)
                Text(detail.detailKey)
                    .font(.caption.bold())
            }
            Text(detail.detailValue)
                .font(.title3.bold())
                .padding(.leading)
                .foregroundColor(.gray)
        }
        .padding([.leading, .top])
    }
}

struct DetailCellView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCellView(detail: Detail.example)
    }
}
