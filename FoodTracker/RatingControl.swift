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
    
    var rating = 0 {
        
        didSet {
            
            setNeedsLayout()
            
        }
    }
    
    
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //let filledStarImage = UIImage(_:#imageLiteral(resourceName: "filledStar"))
        // let emptyStarImage = UIImage(_:#imageLiteral(resourceName: "emptyStar"))
        
        
        for _ in 0 ... (starCount - 1) {
            
            let button = UIButton()
            
            button.setImage(#imageLiteral(resourceName: "emptyStar"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "filledStar"), for: .selected)
            button.setImage(#imageLiteral(resourceName: "filledStar"), for: [.highlighted,.selected])
            
            button.adjustsImageWhenHighlighted = false
            
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
        
        updateButtonSelectionStates()
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
        rating = ratingButtons.index(of: button)! + 1
        
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in ratingButtons.enumerated() {
            
            button.isSelected = index < rating
            
        }
    }
    
    
    
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
