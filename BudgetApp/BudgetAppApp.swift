//
//  BudgetAppApp.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import SwiftUI

@main
struct BudgetAppApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    @StateObject var budgetListVM = BudgetListViewModel()
    
    var body: some Scene {
        WindowGroup {
            let budgetListVM: BudgetListViewModel = {
                let budgetListVM = BudgetListViewModel()
                budgetListPreviewData.append(budgetPreviewData)
                budgetListPreviewData.append(budgetPreviewData1)
                budgetListPreviewData.append(budgetPreviewData2)
                budgetListPreviewData.append(budgetPreviewData3)
                budgetListPreviewData.append(budgetPreviewData4)
                budgetListPreviewData.append(budgetPreviewData5)
                budgetListVM.budgets = budgetListPreviewData
                return budgetListVM
            }()
            
            ContentView()
                .environmentObject(transactionListVM)
                .environmentObject(budgetListVM)
        }
    }
}
