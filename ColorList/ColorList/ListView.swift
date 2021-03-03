//
//  ContentView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var lists = MyColorModel()
    @State var showDark: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    // Toggle
                    Toggle(isOn: $showDark) {
                        Text(showDark ? "All colors": "Dark colors" )
                            .font(.title2)
                            .foregroundColor(Color("DarkText"))
                    }
                    .padding(.top, 10)
                    .padding(.horizontal, 80)
                }
                List {
                    Section(header:
                                Text("American Palette")
                                .foregroundColor(Color("DarkText")), content: {
                                    ForEach(lists.americanPalette) { item in
                                        if showDark && item.modo == "Dark" || !showDark {
                                            NavigationLink(
                                                destination: DetailView(color: item),
                                                label: {
                                                    VStack {
                                                        Text(item.nombre)
                                                            .font(.largeTitle)
                                                            .foregroundColor(item.colorTexto)
                                                            .padding()
                                                    }
                                                    
                                                })
                                                
                                                .listRowBackground(item.color)
                                        }
                                    }
                                })
                    Section(header:
                                Text("Spanish Palette")
                                .foregroundColor(Color("DarkText")), content: {
                                    ForEach(lists.spanishPalette) { item in
                                        if showDark && item.modo == "Dark" || !showDark {
                                            NavigationLink(
                                                destination: DetailView(color: item),
                                                label: {
                                                    VStack {
                                                        Text(item.nombre)
                                                            .font(.largeTitle)
                                                            .foregroundColor(item.colorTexto)
                                                            .padding()
                                                    }
                                                    
                                                })
                                                .listRowBackground(item.color)
                                        }
                                    }
                                })
                    Section(header:
                                Text("FlatUI Palette")
                                .foregroundColor(Color("DarkText")), content: {
                                    ForEach(lists.flatUIPalette) { item in
                                        if showDark && item.modo == "Dark" || !showDark {
                                            NavigationLink(
                                                destination: DetailView(color: item),
                                                label: {
                                                    VStack {
                                                        Text(item.nombre)
                                                            .font(.largeTitle)
                                                            .foregroundColor(item.colorTexto)
                                                            .padding()
                                                    }
                                                    
                                                })
                                                .listRowBackground(item.color)
                                        }
                                    }
                                })
                    
                }
                .listStyle(PlainListStyle())
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
