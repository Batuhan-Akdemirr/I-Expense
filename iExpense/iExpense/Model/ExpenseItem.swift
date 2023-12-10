//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Batuhan Akdemir on 2.12.2023.
//

import Foundation

struct ExpenseItem: Identifiable , Codable , Equatable{
    var id = UUID()
    let name: String
    let type: ExpensesType
    let amount: Double
}
