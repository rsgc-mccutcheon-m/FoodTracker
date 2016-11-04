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
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
        for _ in 0 ... (starCount - 1) {
        
        let button = UIButton()
        
        button.backgroundColor = UIColor.red
            
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        
        ratingButtons += [button]
            
        addSubview(button)
    
        }
    }
    
    override func layoutSubviews() {
        //set button size to the width and height of a square that is the same height as the frame
        let buttonSize = Int(frame.size.height)
        
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        
        for (index, button) in ratingButtons.enumerated() {
            
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
            
            
            
        }
    
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        return CGSize(width: width, height: buttonSize)
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
