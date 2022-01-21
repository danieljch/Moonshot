//
//  ContentView.swift
//  Moonshot
//
//  Created by Daniel Jesus Callisaya Hidalgo on 21/1/22.
//

import SwiftUI

struct ContentView: View {
    let layout = [
    GridItem(.fixed(80)),
    GridItem(.fixed(80)),
    GridItem(.fixed(80))
]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
