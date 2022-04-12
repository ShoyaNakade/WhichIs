//
//  CompareList.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import Foundation

class CompareList:Identifiable {
    var CompareTables: [CompareTable]
    
    init() {
        CompareTables = [CompareTable(),CompareTable(),CompareTable()]
    }
}
