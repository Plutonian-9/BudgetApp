//
//  PreviewData.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "03/31/2023", institution: "PNC", account: "Visa PNC", merchant: "Apple", amount: 54.29, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var budgetPreviewData = Budget(id: 9, maxAmount: 50, currAmount: 0, categoryId: 5, category: "Food & Dining", isOver: false, isEdited: false)
var budgetPreviewData1 = Budget(id: 3, maxAmount: 30, currAmount: 0, categoryId: 3, category: "Entertainment", isOver: false, isEdited: false)
var budgetPreviewData2 = Budget(id: 2, maxAmount: 150, currAmount: 0, categoryId: 2, category: "Bills & Utilities", isOver: false, isEdited: false)
var budgetPreviewData3 = Budget(id: 1, maxAmount: 50, currAmount: 0, categoryId: 1, category: "Auto & Transport", isOver: false, isEdited: false)
var budgetPreviewData4 = Budget(id: 5, maxAmount: 45, currAmount: 0, categoryId: 6, category: "Home", isOver: false, isEdited: false)
var budgetPreviewData5 = Budget(id: 6, maxAmount: 200, currAmount: 0, categoryId: 7, category: "Income", isOver: false, isEdited: false)

var budgetListPreviewData = [Budget]()

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
