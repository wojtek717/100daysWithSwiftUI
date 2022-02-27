//
//  AddView.swift
//  iExpense
//
//  Created by Wojciech Konury on 05/01/2022.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expense: Expenses
    @Environment(\.dismiss) var dismiss
        
    @State private var name = ""
    @State private var type = ExpenseType.personal
    @State private var amount = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(ExpenseType.allCases, id: \.self) {
                        Text($0.name)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expense.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expense: Expenses())
            .previewDevice("iPhone 12 mini")
    }
}
