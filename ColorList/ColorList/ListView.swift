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
                            Text("American Palette"), content: {
                                ForEach(lists.americanPalette) { item in
                                    NavigationLink(
                                        destination: DetailView(color: item),
                                        label: {
                                            VStack {
                                                Text(item.nombre)
                                                    .font(.largeTitle)
                                                    .foregroundColor(item.colorTexto)
                                                    .padding()
                                            }
                                            .listRowBackground(item.color)
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
