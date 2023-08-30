//
//  Detail.swift
//  QST
//
//  Created by Denny Arfansyah on 30/08/23.
//

import Foundation

struct Detail: Codable, Hashable {
    let imageName: String
    let detailKey: String
    let detailValue: String
    
    static let example = Detail(imageName: Constant.durationImage,
                                detailKey: Constant.duration, detailValue: Constant.durationSample)
}
