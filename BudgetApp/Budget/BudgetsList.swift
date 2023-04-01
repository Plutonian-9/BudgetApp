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
                    ForEach(Array(budgetListVM.budgets)) { budget in
                        BudgetView(budget: budget)
                    }
                } header: {
                    Text("Budgets")
                }
            }
            //                // MARK: Header Title
            //                Text("Recent Transactions")
            //                    .bold()
            //
            //                Spacer()
            //
            //                // MARK: Header Link
            //                NavigationLink {
            //                    BudgetsList()
            //                } label: {
            //                    HStack(spacing: 4) {
            //                        Text("See all")
            //                        Image(systemName: "chevron.right")
            //                    }
            //                    .foregroundColor(Color.text)
            //                }
            //            }
            //            .padding(.top)
            //
            //            // MARK: Recent Transaction List
            //            ForEach(Array(budgetListVM.budgets.prefix(5).enumerated()), id: \.element) { index, budget in
            //                BudgetView(budget: budget)
            //
            //                Divider()
            //                    .opacity(index == 4 ? 0 : 1)
            //            }
            //        }
            //        .padding()
            //        .background(Color.systemBackground)
            //        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            //        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y:5)
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
    
