//
//  TableView.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import SwiftUI

struct TableView: View {
    static let columnPadding: CGFloat = 5
    let columnWidth = (UIScreen.screenWidth / 3 ) - columnPadding
    var table = CompareTable()
    
    init() {
//        table.resetCol()
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing:0) {
                    ForEach( 0 ..< table.columns.count) { rownum in
                        // 行数
                        HStack(spacing:0) {
                            ForEach( 0 ..< table.columns[rownum].count) { linenum in
                                // 列数
                                VStack {
                                    Text(table.columns[rownum][linenum].content)
                                        .foregroundColor(table.columns[rownum][linenum].fontColor == "strong" ? .red : .black)
//                                        .foregroundColor(Color("\(table.columns[rownum][linenum].fontColor)"))
//                                        .foregroundColor(Color("#1e1e1e"))

                                        .padding()
                                    
                                }
                                .frame(width: columnWidth)
                                .border(.blue)
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
