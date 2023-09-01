//
//  ProfileView.swift
//  QST
//
//  Created by Denny Arfansyah on 01/09/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var user: GithubUser
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
                    .clipShape(Capsule())
            }
            .frame(width: 150, height: 150)

            Text(user.login)
                .font(.largeTitle.bold())
            Text(user.bio ?? "Just ordinary iOS Developer")
                .padding()
            Spacer()
        }
        .padding()
        .task {
            do {
                user = try await getUser(with: "johnsundell")
            } catch GHError.invalidURL {
                print("Invalid URL")
            } catch GHError.invalidResponse {
                print("Invalid Responnse")
            } catch GHError.invalidData {
                print("Invalid Data")
            } catch {
                print("Error")
            }
        }
    }
    
    func getUser(with username: String) async throws -> GithubUser {
        let endpoint = Constant.githubUserLink + username
        guard let url = URL(string: endpoint) else {
            throw GHError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GithubUser.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: GithubUser.example)
    }
}
