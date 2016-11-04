//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Jarvis on 2016-11-02.
//  Copyright © 2016 Clutch Design Solutions. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
        for _ in 0 ... 4 {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        
        button.backgroundColor = UIColor.red
        
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        
        
        ratingButtons += [button]
            
        addSubview(button)
    
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
         return CGSize(width: 240, height: 44)
        }
    }
    
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
   
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
