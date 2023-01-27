//
//  ContentView.swift
//  FishWatch Watch App
//
//  Created by Paul Delestrac on 26/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "fish")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, fisher!")
                NavigationLink(destination: CollectionView()) {
                    Text("Go to collection")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().edgesIgnoringSafeArea(.all)
    }
}
