//
//  MyColorModel.swift
//  ColorList
//
//  Created by Enrique Diaz de Leon Hicks on 2/28/21.
//

import SwiftUI

class MyColorModel: ObservableObject {
    
    @Published var list1 = [MyColor]()
    @Published var list2 = [MyColor]()
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        var item: MyColor = MyColor(text: "One", image: "01.circle.fill")
        list1.append(item)
        item = MyColor(text: "Two", image: "02.circle.fill")
        list1.append(item)
        item = MyColor(text: "Three", image: "03.circle.fill")
        list1.append(item)
        item = MyColor(text: "Four", image: "04.circle.fill")
        list1.append(item)
        item = MyColor(text: "Five", image: "05.circle.fill")
        list2.append(item)
        
        item = MyColor(text: "Six", image: "06.circle.fill")
        list2.append(item)
        item = MyColor(text: "Seven", image: "07.circle.fill")
        list2.append(item)
        item = MyColor(text: "Eight", image: "08.circle.fill")
        list2.append(item)
        item = MyColor(text: "Nine", image: "09.circle.fill")
        list2.append(item)
        item = MyColor(text: "Ten", image: "10.circle.fill")
        list2.append(item)
    }
}
