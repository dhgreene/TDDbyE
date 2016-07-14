//
//  Frank.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Franc : Money {
    override func times(multiplier:Int) -> Money {
        return Money(amount: amount * multiplier, currency: currency)
    }
}
