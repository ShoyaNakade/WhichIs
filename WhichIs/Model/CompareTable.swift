//
//  CompareTable.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import Foundation
import Realm
import RealmSwift

class CompareTable: Decodable, Identifiable {
    var id = ""
    var createdAt = Date()
    var title = "hoge"
    var columns: [[Column]]
    
    init() {
        var columm = Column(content: "yaho")
        
        columns = [
            [columm, columm, columm],
            [columm, columm, columm],
            [columm, columm, columm],
            [columm, columm, columm]
//            ["0,0", "0,1","0,2"],
//            ["1,0", "1,1","1,2"]
        ]
    }
    
}

extension CompareTable {
    func resetCol() {
        self.columns = [
            
//            ["項目/対象", "比較対象1","比較対象2"],
//            ["比較項目", "◯","△"]
        ]
    }
}
