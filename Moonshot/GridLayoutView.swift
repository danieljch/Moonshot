//
//  GridLayoutView.swift
//  Moonshot
//
//  Created by Daniel Jesus Callisaya Hidalgo on 14/2/22.
//  Challenge 3 MoonshotApp

import SwiftUI

struct GridLayout: View {
    let columns: [GridItem]
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission,  astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()

                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        }
                    }
                }
            }.padding([.horizontal, .bottom])
        } .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
    }
}

struct GridLayoutView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        GridLayout(columns: [GridItem(.adaptive(minimum: 150))] , astronauts: astronauts, missions: missions)
    }
}
