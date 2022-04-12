//
//  ContentView.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    init() {
//        let realm = try! Realm()
//        let compareTable1 = CompareTable()
//        
//        compareTable1.title = "hoge"
//        try? realm.write {
//            realm.add(compareTable1)
//        }
    }
    
    var body: some View {
        ListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
