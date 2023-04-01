//
//  PreviewData.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "03/31/2023", institution: "PNC", account: "Visa PNC", merchant: "Apple", amount: 54.29, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var budgetPreviewData = Budget(id: 0, maxAmount: 500, currAmount: 0, categoryId: 5, category: "Food", isOver: false, isEdited: false)

var budgetListPreviewData = [Budget](repeating: budgetPreviewData, count: 10)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
