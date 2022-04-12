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
class Column: Decodable {
    var content: String = "hoge"
    var fontColor: String = "normal"
    var backgroundColor: String = "strong"
    
    init() {
    }
    
    init( content: String, fontColor: String, backroundColor: String) {
        self.content = content
        self.fontColor = fontColor
        self.backgroundColor = backroundColor
    }
    
    init( content: String) {
        self.content = content
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
    
    func setTitleColmun() {
        self.backgroundColor = "gray"
    }
}
