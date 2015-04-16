//
//  ViewController.swift
//  LionAndTiger6
//
//  Created by delmarz on 2/8/15.
//  Copyright (c) 2015 delmarz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    @IBOutlet var interestingFacts: UILabel!
    
    var currentIndex = 0
    var currentAnimals = (species: "Tiger", index: 0)
    
    var myTiger:[Tiger] = []
    var myLion:[Lion] = []
    var myLionCub:[LionCub] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        var firstTiger = Tiger()
        firstTiger.name = "Benga"
        firstTiger.age = 3
        firstTiger.breed = "Bengal"
        firstTiger.image = UIImage(named: "BengalTiger.jpg")
        
        
        
        self.nameLabel.text = firstTiger.name;
        self.ageLabel.text = "\(firstTiger.age)"
        self.breedLabel.text = firstTiger.breed
        self.imageView.image = firstTiger.image
        self.interestingFacts.text = firstTiger.interestingFacts()
        
        self.myTiger.append(firstTiger)
        
        
        var secondTiger = Tiger()
        secondTiger.name = "Indo"
        secondTiger.age = 4
        secondTiger.breed = "Indochinese"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Malay"
        thirdTiger.age = 5
        thirdTiger.breed = "Malayan"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Sibe"
        fourthTiger.age = 6
        fourthTiger.breed = "Siberian"
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        self.myTiger += [secondTiger, thirdTiger, fourthTiger]
        
        var maleLion = Lion()
        maleLion.name = "Ploplo"
        maleLion.age = 3
        maleLion.subspecies = "bayot"
        maleLion.isAlphaMale = true;
        maleLion.image = UIImage(named: "Lion.jpg")
        
        var femaleLion = Lion()
        femaleLion.name = "Plapla"
        femaleLion.age = 4
        femaleLion.subspecies = "tomboy"
        femaleLion.isAlphaMale = false
        femaleLion.image = UIImage(named: "Lioness.jpeg")
        
        self.myLion += [maleLion, femaleLion]
        
        var lionCub1 = LionCub()
        lionCub1.name = "Simba"
        lionCub1.age = 1
        lionCub1.subspecies = "ambot"
        lionCub1.isAlphaMale = true
        lionCub1.image = UIImage(named: "LionCub1.jpg")
        
        var lionCub2 = LionCub()
        lionCub2.name = "bajii"
        lionCub2.age = 2
        lionCub2.subspecies = "jiba"
        lionCub2.isAlphaMale = false
        lionCub2.image = UIImage(named: "LionCub2.jpeg")
        
        self.myLionCub += [lionCub1, lionCub2]
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK:
    // MARK: IBAction
    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem)
    {
  
        updateCurrentAnimals()
        updateView()
    }
    
    // MARK:
    // MARK: Helper Methods
    
 
    
    func updateTiger()
    {
        var randomIndex:Int
        
        do
        {
            randomIndex = Int(arc4random_uniform(UInt32(self.myTiger.count)))
        }while self.currentIndex == randomIndex
        self.currentIndex = randomIndex
        
        let tiger = self.myTiger[randomIndex];
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            self.imageView.image = tiger.image;
            self.interestingFacts.text = tiger.interestingFacts()
            
            
            }, completion: {
                
                (finished: Bool) -> () in
                
        })
        
        
    }
    
    
    func updateCurrentAnimals()
    {
        
        switch self.currentAnimals
        {
        case ("Tiger", _):
            let randomIndex = Int(arc4random_uniform(UInt32(self.myLion.count)))
            self.currentAnimals = ("Lion", randomIndex)
        case ("Lion", _):
            let randomIndex = Int(arc4random_uniform(UInt32(self.myLionCub.count)))
            self.currentAnimals = ("LionCub", randomIndex)
        default:
            let randomIndex = Int(arc4random_uniform(UInt32(self.myTiger.count)))
            self.currentAnimals = ("Tiger", randomIndex)
            
            
        }
        
    }
    
    
    func updateView()
    {
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            
            if self.currentAnimals.species == "Tiger"
            {
                
                let tiger = self.myTiger[self.currentAnimals.index]
                
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
                self.imageView.image = tiger.image;
                self.interestingFacts.text = tiger.interestingFacts()
                
            }
            else if self.currentAnimals.species == "Lion"
            {
                
                let lion = self.myLion[self.currentAnimals.index]
                self.nameLabel.text = lion.name
                self.ageLabel.text = "\(lion.age)"
                self.breedLabel.text = lion.subspecies
                self.imageView.image = lion.image;
                 self.interestingFacts.text = lion.interestingFacts()
                
            }
            else if self.currentAnimals.species == "LionCub"
            {
                
                let lionCub = self.myLionCub[self.currentAnimals.index]
                
                self.nameLabel.text = lionCub.name
                self.ageLabel.text = "\(lionCub.age)"
                self.breedLabel.text = lionCub.subspecies
                self.imageView.image = lionCub.image;
                self.interestingFacts.text = lionCub.interestingFacts()
                
                
            }
            
            
            }, completion: {
                (finished: Bool) -> () in
        })
        
        
    }


}

