//
//  ContentView.swift
//  iExpense
//
//  Created by Batuhan Akdemir on 2.12.2023.
//

import SwiftUI



struct ContentView: View {
    
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false
    
    
    var body: some View {
    
        NavigationStack {
            
            List {
                
                CategoryView(category: "Personal", expenses: expenses)
                CategoryView(category: "Business", expenses: expenses)
             
            }

            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                   showingAddExpense = true
                }
            }
        }
        .preferredColorScheme(.dark)
        .sheet(isPresented: $showingAddExpense) {
            AddView(expenses: expenses)
        }
  
    }
}

/*#Preview {
    ContentView()
}
*/
