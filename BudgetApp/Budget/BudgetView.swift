//
//  BudgetView.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import SwiftUI
import SwiftUICharts

struct BudgetView: View {
    @EnvironmentObject var budgetListVM: BudgetListViewModel
    
    var budget: Budget
    
    var demoData2: [Double] = [8, 2]
    
    var body: some View {
        VStack {
            HStack (spacing: 20) {
                //MARK: Budget Category Name
                Text(budget.category)
                    .bold()
                    .lineLimit(1)
                
                Spacer()
                
                //MARK: Budget Amount Spent
                Text(budget.currAmount, format: .currency(code: "USD"))
                
                //MARK: Budget MAX
                Text(budget.maxAmount, format: .currency(code: "USD"))
                
            }
//            let rowWidth = 10
            
            Rectangle()
                .cornerRadius(5)
                .padding(.vertical, 2)
                .frame(maxWidth: .infinity)
                .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                .foregroundColor(Color.icon)
            
            
            .padding([.top, .bottom], 8)
        }
    }
}

struct BudgetView_Previews: PreviewProvider {
    static let budgetListVM: BudgetListViewModel = {
        let budgetListVM = BudgetListViewModel()
        budgetListVM.budgets = budgetListPreviewData
        return budgetListVM
    }()
    
    static var previews: some View {
        BudgetView(budget: budgetPreviewData)
            .environmentObject(budgetListVM)
    }
}
