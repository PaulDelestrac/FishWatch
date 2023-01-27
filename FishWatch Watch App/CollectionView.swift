//
//  CollectionView.swift
//  FishWatch Watch App
//
//  Created by Paul Delestrac on 26/01/2023.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        FishList()
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}

struct FishList: View {
    @State private var showFavoritesOnly = true
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { col in
                    Button {
                        print("Button pressed!")
                    } label: {
                        HStack {
                            Text("🐡").font(.system(size: 36))
                            Text("Name of Fish")
                        }
                    }
                }
            }
            .navigationTitle("Fish Collection")
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}
