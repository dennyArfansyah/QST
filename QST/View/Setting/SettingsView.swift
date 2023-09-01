//
//  SettingsView.swift
//  QST
//
//  Created by Denny Arfansyah on 31/08/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
                Form {
                    Section {
                        HStack {
                            NavigationLink {
                                
                            } label : {
                                Image(systemName: "fanblades.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .background(in: Circle())
                                VStack(alignment: .leading) {
                                    Text("Denny Arfansyah")
                                        .font(.headline)
                                    Text("Apple ID, iCloud, Media & Purchases")
                                        .font(.caption)
                                }
                            }
                        }
                        NavigationLink {
    
                        } label: {
                            Text("Apple ID Suggestions")
                                .font(.subheadline)
                        }
                    }
                    
                    Section {
                        HStack {
                            NavigationLink {
                                
                            } label : {
                                ZStack {
                                    Color.orange
                                    Image(systemName: "airplane")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .background(
                                            RoundedRectangle(cornerRadius: 5)
                                                .fill(.orange)
                                        )
                                        .foregroundColor(.white)
                                }
                                VStack(alignment: .leading) {
                                    Text("Airplane Mode")
                                        .font(.subheadline)
                                }
                            }
                        }
//                        HStack {
//                            NavigationLink {
//
//                            } label : {
//                                Image(systemName: "airplane")
//                                    .resizable()
//                                    .frame(width: 20, height: 20)
//                                    .tint(.yellow)
//                                    .clipShape(RoundedRectangle(cornerRadius: 5))
//                                VStack(alignment: .leading) {
//                                    Text("Wi-Fi")
//                                        .font(.subheadline)
//                                }
//                            }
//                        }
//                        HStack {
//                            NavigationLink {
//
//                            } label : {
//                                Image(systemName: "fanblades.fill")
//                                    .resizable()
//                                    .frame(width: 20, height: 20)
//                                    .background(in: Circle())
//                                VStack(alignment: .leading) {
//                                    Text("Bluetooth")
//                                        .font(.subheadline)
//                                }
//                            }
//                        }
                    }
                }
            .navigationTitle("Settings")
//            .navigationDestination(for: <#T##Hashable.Protocol#>, destination: <#T##(Hashable) -> View#>)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
