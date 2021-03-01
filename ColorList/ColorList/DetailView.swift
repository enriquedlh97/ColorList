//
//  DetailView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct DetailView: View {
    
    var color: Color
    var text: String
    
    var body: some View {
        ZStack {
            color
            VStack {
                Text(text)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(color: Color.blue, text: "Blue")
    }
}
