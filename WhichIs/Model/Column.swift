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
    
    
    func fontColorToUI() -> UIColor {
        switch self.fontColor {
        case "normal" :
            return UIColor(Color(.black))
        case "red" :
            return UIColor(Color(.red))
        default:
            return UIColor(Color(.black))
            
        }
    }
}
