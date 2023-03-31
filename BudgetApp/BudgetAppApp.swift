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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
