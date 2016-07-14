//
//  Pair.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Pair : Hashable {
    private var from = ""
    private var to = ""
    
    var hashValue: Int {
        return 0
    }
    
    init(from:String, to:String){
        self.from = from
        self.to = to
    }
    
    
}

func ==(lhs: Pair, rhs: Pair) -> Bool {
    return lhs.hashValue == rhs.hashValue
}