//
//  DetailView.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

struct DetailView: View {
    
    var color: MyColor
    
    var body: some View {
        ZStack {
            color.color
            VStack {
                Text(color.nombre)
                    .font(.largeTitle)
                    .foregroundColor(color.colorTexto)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(color: MyColor(id: 1, color: Color("LightGreenishBlue"), colorTexto: Color("DarkText"), nombre: "Light Greenish Blue", modo: "Light"))
    }
}
