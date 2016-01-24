//
//  TipCalculator.swift
//  SimpleTip
//
//  Created by Mike Mikina on 1/17/16.
//  Copyright © 2016 FDT. All rights reserved.
//

import Foundation

class TipCalculator {
    
    func calculateTip(amount: Double, taxPercentage: Double, tipPercentage: Double) -> Double {
        var result: Double = 0
        if(taxPercentage >= 1) {
            return result
        }
        
        result = (amount - (amount * taxPercentage)) * tipPercentage
        return result;
    }
}