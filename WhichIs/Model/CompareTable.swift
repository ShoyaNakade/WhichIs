//
//  CompareTable.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import Foundation
import Realm
import RealmSwift

struct CompareTable: Decodable, Identifiable {
    var id = ""
    var createdAt = Date()
    var title = "hoge"
    var columns: [[Column]]
    
    init() {
//        columnTitle.setTitleColmun()
        
        columns = [
            [Column(content: "/"), Column(content:"head1"), Column(content: "head2")],
            [Column(), Column(), Column()],
            [Column(), Column(), Column()],
            [Column(), Column(), Column()],
//            ["0,0", "0,1","0,2"],
//            ["1,0", "1,1","1,2"]
        ]
        
        
        setNormalTable()
    }
    
}

extension CompareTable {
    mutating func resetCol() {
        self.columns = [
                [Column(content: "/"), Column(content:"head1"), Column(content: "head2")],
                [Column(), Column(), Column()],
            ]
    }
    
    mutating func setNormalTable() {
        let columnLine = columns.count
        let columnRow  = columns[0].count
        
        for line in (0 ..< columnLine) {
            self.columns[line][0].backgroundColor = "red"
        }
        for row in (0 ..< columnRow) {
            self.columns[0][row].backgroundColor = "gray"
        }
    }
}
