//
//  TableView.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/09.
//

import SwiftUI

struct TableView: View {
    @StateObject private var viewModel = TableViewModel()
    static let columnPadding: CGFloat = 5
    let columnWidth = (UIScreen.screenWidth / 3 ) - columnPadding
    
    init () {
        
    }
    
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators: true) {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing:0) {
                        ForEach( 0 ..< viewModel.compareTable.columns.count, id:\.self) { rownum in
                            // 行数
                            // id:\.self　をつけないと変更されない。foreach参照
                            HStack(spacing:0) {
                                ForEach( 0 ..< viewModel.compareTable.columns[rownum].count, id:\.self) { linenum in
                                    // 列数
                                    ColumnView(column: viewModel.compareTable.columns[rownum][linenum], columnWidth: columnWidth)
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            
            HStack() {
                Button("BUtton") {
                    // action
                    viewModel.deleteLine(lineIndex: 2)
                }
                Button("row") {
                    // action
                    viewModel.deleteRow(rowIndex: 1)
                }
            }
        }
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

