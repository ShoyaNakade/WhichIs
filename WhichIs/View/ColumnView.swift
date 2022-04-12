//
//  ColumnView.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/13.
//

import SwiftUI

struct ColumnView: View {
    let column: Column
    let columnWidth: CGFloat
    var bgcolor: Color {
        return column.bgColorToUI
    }
    var fontColor: Color {
        return column.fontColorToUI()
    }
    
    init(column: Column, columnWidth: CGFloat) {
        self.column = column
        self.columnWidth = columnWidth
    }
    
    var body: some View {
        VStack {
            Text(column.content)
                .foregroundColor(column.fontColorToUI())
                .padding()
            
        }
        .frame(width: columnWidth)
        .border(.blue)
        .background(column.bgColorToUI)
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(column: Column(), columnWidth: 300)
    }
}
