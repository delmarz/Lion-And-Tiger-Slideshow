//
//  LionCub.swift
//  LionAndTiger6
//
//  Created by delmarz on 2/8/15.
//  Copyright (c) 2015 delmarz. All rights reserved.
//

import Foundation
import UIKit

class LionCub: Lion {
    
    var isMale = false
    
    override func interestingFacts() -> String {
        
        var randomFacts:String
        
        
        if isMale {
            
            randomFacts = "Cubs are usually hidden in dense bush for approximately in six weeks."
        }
        else {
            randomFacts = "Cubs begin eating meat at about the age of six weeks."
        }
        
        return randomFacts
        
    }
    
    
}