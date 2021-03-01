//
//  ContentView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var lists = MyColorModel()
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            Text("List 1"), content: {
                                ForEach(lists.list1) { item in
                                    NavigationLink(
                                        destination: DetailView(image: item.image,
                                                                text: item.text),
                                        label: {
                                            HStack {
                                                Image(systemName: item.image)
                                                    .font(.largeTitle)
                                                    .foregroundColor(.blue)
                                                Text(item.text)
                                                    .padding()
                                            }
                                        })
                                }
                            })
                Section(header:
                            Text("List 2"), content: {
                                ForEach(lists.list2) { item in
                                    NavigationLink(
                                        destination: DetailView(image: item.image,
                                                                text: item.text),
                                        label: {
                                            HStack {
                                                Image(systemName: item.image)
                                                    .font(.largeTitle)
                                                    .foregroundColor(.blue)
                                                Text(item.text)
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
