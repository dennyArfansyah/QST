//
//  GithubUser.swift
//  QST
//
//  Created by Denny Arfansyah on 01/09/23.
//

import Foundation

struct GithubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String?
    
    static let example = GithubUser(login: "SAllen0400", avatarUrl: "", bio: "")
}
