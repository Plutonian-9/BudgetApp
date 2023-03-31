//
//  PreviewData.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "03/31/2023", institution: "PNC", account: "Visa PNC", merchant: "Apple", amount: 54.29, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
