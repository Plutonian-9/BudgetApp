//
//  BudgetsList.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import SwiftUI

struct BudgetsList: View {
    @EnvironmentObject var budgetListVM: BudgetListViewModel
    
    var body: some View {
        VStack {
            List {
                Section {
                    //MARK: Budget Groups
                    ForEach(budgetListPreviewData) { budget in
                        BudgetView(budget: budget)
                    }
                } header: {
                    Text("Budgets")
                }
            }
            
        }
    }
}
    
    struct BudgetsList_Previews: PreviewProvider {
        static let budgetListVM: BudgetListViewModel = {
            let budgetListVM = BudgetListViewModel()
         
            budgetListVM.budgets = budgetListPreviewData
            return budgetListVM
        }()
        
        static var previews: some View {
            NavigationView {
                BudgetsList()
            }
            .environmentObject(budgetListVM)
        }
    }
    
