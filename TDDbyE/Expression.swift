//
//  Expression.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

protocol Expression{
    func reduce(bank:Bank, to:String) -> Money
}