//
//  ViewController.swift
//  animation_demo
//
//  Created by ANDERSON CHENG on 12/20/16.
//  Copyright © 2016 ANDERSON CHENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var flag:Bool?
    
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var sideViewLeadingConstraint: NSLayoutConstraint!
    
    
    @IBAction func handleButtonPressed(_ sender: UIButton) {
        
        
        if self.flag! {
            
            self.sideViewLeadingConstraint.constant = -70
            self.flag = false
            
        } else {
            
            self.sideViewLeadingConstraint.constant = -self.sideView.frame.width
            self.flag = true
        }
        
        
        
        
        
        
        // Code to start animation :::::::::::::::::::::::::::::::::::::::::::::::
        self.view.setNeedsLayout()
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: [UIViewAnimationOptions.allowUserInteraction], animations: {
            // During the animation
            self.view.layoutIfNeeded()
            
        }) { (finished) in
            if finished {
                
                // do some stuff after the animation is finished
            }
        }
        // :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.sideViewLeadingConstraint.constant = -self.sideView.frame.width
        self.flag = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

