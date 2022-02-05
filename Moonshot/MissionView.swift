//
//  MissionView.swift
//  Moonshot
//
//  Created by Daniel Jesus Callisaya Hidalgo on 4/2/22.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    let crew: [CrewMember]
       var body: some View {
           GeometryReader { geometry in
               ScrollView {
                   VStack {
                       Image(mission.image)
                           .resizable()
                           .scaledToFit()
                           .frame(maxWidth: geometry.size.width * 0.6)
                           .padding(.top)

                       VStack(alignment: .leading) {
                           Text("Mission Highlights")
                               .font(.title.bold())
                               .padding(.bottom, 5)

                           Text(mission.description)
                       }
                       .padding(.horizontal)
                   }
                   .padding(.bottom)
               }
           }
           .navigationTitle(mission.displayName)
           .navigationBarTitleDisplayMode(.inline)
           .background(.darkBackground)
       }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")

    static var previews: some View {
        MissionView(mission: missions[0])
            .preferredColorScheme(.dark)
    }
}
