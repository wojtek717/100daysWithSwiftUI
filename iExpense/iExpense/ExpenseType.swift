//
//  ExpenseType.swift
//  iExpense
//
//  Created by Wojciech Konury on 05/01/2022.
//

import Foundation

enum ExpenseType: CaseIterable, Codable {
    case busines
    case personal

    var name: String {
        switch self {
        case .busines:
            return "Busines"
        case .personal:
            return "Personal"
        }
    }
}
