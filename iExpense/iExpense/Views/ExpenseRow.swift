//
//  ExpenseRow.swift
//  iExpense
//
//  Created by Batuhan Akdemir on 2.12.2023.
//

import SwiftUI

struct ExpenseRow: View {
    
    let  item : ExpenseItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.type.rawValue)
            }
            
            Spacer()
            
            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .amountColor(for: item)
        }
    }
}

/*#Preview {
    ExpenseRow()
}
*/
