//
//  BudgetCategory+CoreDataClass.swift
//  Budget-App
//
//  Created by Sahil Agashe on 10/04/23.
//

import Foundation
import CoreData

@objc(BudgetCategory)
public class BudgetCategory: NSManagedObject {
    
    var transactionTotal: Double {
        
        let transactionsArray: [Transaction] = transactions?.toArray() ?? []
        return transactionsArray.reduce(0) { next, transaction in
            next + transaction.amount
        }
    }
    
    var remainingAmount: Double {
        amount - transactionTotal
    }
    
}
