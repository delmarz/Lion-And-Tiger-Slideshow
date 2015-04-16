//
//  Lion.swift
//  LionAndTiger6
//
//  Created by delmarz on 2/8/15.
//  Copyright (c) 2015 delmarz. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    
    var name = ""
    var age = 0
    var isAlphaMale = false
    var subspecies = ""
    var image = UIImage(named: "")
    
    
    
     func interestingFacts() ->String {
    
        var randomFact:String
        
        if self.isAlphaMale {
            
            randomFact = "Male lion are easy to recognize thanks to their distinctive names. Males with darker names are more likely to attract females."
        }
        else {
            randomFact = "Female Lionesess form the stable social unit and do not tolerate outside females."
        }
        
        
        
        return randomFact
    }
}