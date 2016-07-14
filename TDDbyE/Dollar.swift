//
//  Dollar.swift
//  TDDbyE
//
//  Created by David Greene on 7/13/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Dollar : Money {
    override func times(multiplier:Int) -> Money {
        return Dollar(amount: amount * multiplier)
    }
}

