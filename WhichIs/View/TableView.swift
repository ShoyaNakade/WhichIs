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
    @State var isDeleteMode: Bool
    
    init () {
        isDeleteMode = false
    }
    
    var body: some View {
        VStack() {
            Text("aaaa")
            Button {
                isDeleteMode.toggle()
            } label: {
                Image(systemName: "pencil.circle.fill")
            }
            
            ScrollView(.horizontal, showsIndicators: true) {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing:0) {
                        ForEach( 0 ..< viewModel.compareTable.columns.count, id:\.self) { lineNum in
                            // 行数
                            // id:\.self　をつけないと変更されない。foreach参照
                            HStack(spacing:0) {
                                if isDeleteMode {
                                    if lineNum != 0 {
                                        Button {
                                            // action
                                            viewModel.deleteLine(lineIndex: lineNum)
                                            print("linnum: \(lineNum)")
                                        } label: {
                                            Text("\(lineNum)")
                                            Image(systemName: "minus.circle")
                                                .padding(.trailing,10)
                                        }
                                    }
                                    else {
                                        Image(systemName: "minus.circle.fill")
                                            .padding(.trailing,10)
                                    }
                                }
                                ForEach( 0 ..< viewModel.compareTable.columns[lineNum].count, id:\.self) { rowNum in
                                    // 列数
                                    ColumnView(column: viewModel.compareTable.columns[lineNum][rowNum], columnWidth: columnWidth)
                                }
                            }
                        }
                    }
                }
            }
            .padding()
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

