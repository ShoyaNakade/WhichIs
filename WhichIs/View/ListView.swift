//
//  ListView.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import SwiftUI

struct ListView: View {
    let compareList = CompareList().CompareTables
    
    var body: some View {
        NavigationView {
            List(compareList) { list in
                NavigationLink( destination: TableView()) {
                    Text("\(list.title)")
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
