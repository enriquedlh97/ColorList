//
//  ContentView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct ListView: View {
    
    var list1 = ["One", "Two", "Three", "Four", "Five"]
    var list2 = ["Six", "Seven", "Eight", "Nine", "Ten"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                                Text("List 1"), content: {
                    ForEach(list1, id:\.self) { item in
                        NavigationLink(
                            destination: DetailView(image: "hare.fill",
                                                    text: item),
                            label: {
                                HStack {
                                    Image(systemName: "hare.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                    Text("\(item)")
                                        .padding()
                                }
                            })
                    }
                })
                Section(header:
                                Text("List 2"), content: {
                    ForEach(list2, id:\.self) { item in
                        NavigationLink(
                            destination: DetailView(image: "hare.fill",
                                                    text: item),
                            label: {
                                HStack {
                                    Image(systemName: "hare.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                    Text("\(item)")
                                        .padding()
                                }
                            })
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
