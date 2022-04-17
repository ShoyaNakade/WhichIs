//
//  TableViewModel.swift
//  WhichIs
//
//  Created by 中出翔也 on 2022/04/14.
//

import Foundation

final class TableViewModel: ObservableObject {
    
    @Published var compareTable: CompareTable = CompareTable()
    
    init() {
//        fetchTotalData()
    }
    
    func deleteRow(rowIndex: Int) {
        for line in 0 ..< compareTable.columns.count {
            compareTable.columns[line].remove(at: rowIndex)
        }
    }
    
    func deleteLine(lineIndex: Int) {
        compareTable.columns.remove(at: lineIndex)
//        compareTable.columns.removeAll()
    }
    
    func fetchTotalData() {
//        APIService.shared.fetchTotalData { result in
//            //MARK: - dispatchを使う理由はfetchに時間がかかるから、アプリの裏側で実行する
//            DispatchQueue.main.async {
//                switch result{
//                case .success(let totalData):
//                    self.totalData = totalData
//                case .failure(_):
//                    self.alertItem = AlertContext.unableToFetchTotalStats
//                }
//            }
//        }
    }
}
