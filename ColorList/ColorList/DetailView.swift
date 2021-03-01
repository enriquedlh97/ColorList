//
//  DetailView.swift
//  ColorList
//
//  Created by user189351 on 2/28/21.
//

import SwiftUI

struct DetailView: View {
    
    var image: String
    var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(image: "50.circle.fill", text: "Hello")
    }
}
