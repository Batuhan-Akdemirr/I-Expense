//
//  CategoryView.swift
//  iExpense
//
//  Created by Batuhan Akdemir on 2.12.2023.
//

import SwiftUI

struct CategoryView: View {
    
    let category: String
    var expenses : Expenses
    
    var body: some View {
        
        let items = expenses.items.filter { $0.type.rawValue == category }
        return Group {
            if !items.isEmpty {
                Section(header: Text(category)) {
                    ForEach(items) { item in
                        ExpenseRow(item: item)
                    }
                    .onDelete(perform: removeItems )
                }
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
          let categoryItems = expenses.items.filter { $0.type.rawValue == category }
          for index in offsets {
              let itemToRemove = categoryItems[index]
              if let indexToRemove = expenses.items.firstIndex(of: itemToRemove) {
                  expenses.items.remove(at: indexToRemove)
              }
          }
      }
}

