//
//  ContentView.swift
//  Moonshot
//
//  Created by Daniel Jesus Callisaya Hidalgo on 21/1/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
 
    var body: some View {
        Text("\(astronauts.count)")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
