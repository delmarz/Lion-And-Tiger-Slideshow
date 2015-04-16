//
//  Tiger.swift
//  LionAndTiger6
//
//  Created by delmarz on 2/8/15.
//  Copyright (c) 2015 delmarz. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    
    var name = ""
    var breed = ""
    var age = 0
    var image = UIImage(named: "")
    
    
    
    func interestingFacts() ->String
    {
        
        var randomFacts:String
        
        let randomIndex = Int(arc4random_uniform(UInt32(3)))
        
        if randomIndex == 0 {
            randomFacts = "The Tiger is the biggest species in the cat family."
        }
        else if randomIndex == 1 {
            randomFacts = "Tigers can reach a length of 3.3 meters."
        }
        else {
            randomFacts = " A group of tigers is known as an 'ambush' or 'streak'."
        }
        
        return randomFacts;
        
    }
    
}
