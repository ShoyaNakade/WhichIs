//
//  Column.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/10.
//

import Foundation
import RealmSwift
import SwiftUI

//
class Column {
    @Published var content: String = "　"
    var fontColor: String = "normal"
    var backgroundColor: String = "strong"
    
//    init(content: String) {
//        self._content = State(initialValue: content)
//    }
    init() {
        
    }
    init( content: String) {
        self.content = content
    }
    
    init( content: String, fontColor: String, backroundColor: String) {
        self.content = content
        self.fontColor = fontColor
        self.backgroundColor = backroundColor
    }
    
    
    
    func fontColorToUI() -> Color {
        switch self.fontColor {
        case "normal" :
            return Color(.black)
        case "red" :
            return Color(.red)
        default:
            return Color(.black)
            
        }
    }
    
    var bgColorToUI: Color {
        switch self.backgroundColor {
        case "normal" :
            return Color(.white)
        case "gray" :
            return Color(.gray)
        case "red" :
            return Color(.red)
        default:
            return Color(.white)
            
        }
    }
}
