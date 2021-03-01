//
//  ContentView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 51) { item in
                NavigationLink(
                    destination: DetailView(image: "\(item).circle.fill",
                                            text: "Hello World"),
                        label: {
                            HStack {
                                Image(systemName: "\(item).circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                Text("Hello, world!")
                                    .padding()
                            }
                    })
            }
            .navigationBarTitle("List")
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.red)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
