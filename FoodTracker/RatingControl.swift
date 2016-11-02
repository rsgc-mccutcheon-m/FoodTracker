//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Jarvis on 2016-11-02.
//  Copyright © 2016 Clutch Design Solutions. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    
   
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), for: .TouchDown)
        
        addSubview(button)
    
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
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
