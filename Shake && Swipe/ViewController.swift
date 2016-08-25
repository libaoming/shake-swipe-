//
//  ViewController.swift
//  Shake && Swipe
//
//  Created by 李宝明 on 16/8/25.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipeRight(gesture:)))
        
        let leftSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipeRight(gesture:)))
        
        rightSwipeRecognizer.direction = UISwipeGestureRecognizerDirection.right
        leftSwipeRecognizer.direction = UISwipeGestureRecognizerDirection.left
        
        self.view.addGestureRecognizer(rightSwipeRecognizer)
        self.view.addGestureRecognizer(leftSwipeRecognizer)

    
    }
    
    func swipeRight(gesture: UIGestureRecognizer){
        
        if let gest = gesture as? UISwipeGestureRecognizer {
            
            switch gest.direction {
                
            case UISwipeGestureRecognizerDirection.right :
                print(">>>>>>>>you are swipe me monster......<<<<<<<<<<")
            
            case UISwipeGestureRecognizerDirection.left :
                print(">>>>>>>>> you are swipe   me  to leftmonster...... <<<<<<<")
            
            
            default:
                  break
                
                }
        }
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            print("you are shaking me, you buster...")
        }
    }

}

