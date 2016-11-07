//
//  Meal.swift
//  FoodTracker
//
//  Created by Jarvis on 2016-11-04.
//  Copyright © 2016 Clutch Design Solutions. All rights reserved.
//

import UIKit


// Class declaration

class Meal : NSObject, NSCoding {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    // MARK: Types
    
    struct PropertyKey {
        
        static let nameKey = "name"
        static let photoKey = "photo"
        static let ratingKey = "rating"
    }
    
    
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
        
        
        // MARK: NSCoding
        
        func encodeWithCoder(aCoder: NSCoder) {
        
            aCoder.encode(name, forKey: PropertyKey.nameKey)
            aCoder.encode(photo, forKey: PropertyKey.photoKey)
            aCoder.encode(rating, forKey: PropertyKey.ratingKey)
        
        }
        
        required convenience init?(coder aDecoder : NSCoder) {
        
        
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
