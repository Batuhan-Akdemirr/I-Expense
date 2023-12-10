//
//  ViewExtension.swift
//  iExpense
//
//  Created by Batuhan Akdemir on 2.12.2023.
//

import SwiftUI


extension View {
    
    func amountColor(for item: ExpenseItem) -> some View {
        
        if item.amount < 10 {
            return  self.foregroundStyle(.green)
            
            } else if item.amount < 100 {
                return  self.foregroundStyle(.blue)
                
            } else {
                return  self.foregroundStyle(.red)
            }
    }
}
