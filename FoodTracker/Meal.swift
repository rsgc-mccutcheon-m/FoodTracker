//
//  Meal.swift
//  FoodTracker
//
//  Created by Jarvis on 2016-11-04.
//  Copyright © 2016 Clutch Design Solutions. All rights reserved.
//

import UIKit


// Class declaration

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    //MARK: Initialization
    
    init?(name: String , photo: UIImage? , rating: Int) {
      
        //initialize stored properties
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
        //check if init failed due to nil nmae value input or neg ratings!
        
        if (name.isEmpty) || (rating < 0) {
            
            return nil
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
