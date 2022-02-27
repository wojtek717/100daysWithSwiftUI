//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Wojciech Konury on 05/01/2022.
//

import Foundation


struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: ExpenseType
    let amount: Double
}
