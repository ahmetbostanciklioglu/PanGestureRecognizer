//
//  ViewController.swift
//  IBoutletConnection
//
//  Created by Ahmet Bostancıklıoğlu on 1.01.2023.
//

import UIKit

//MARK: - Don't forget to add UIGestureRecognizerDelegate, when you add delegate to gestureRecognizer
class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //MARK: set panGestureRecognizer
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizerTapped))
        panGestureRecognizer.minimumNumberOfTouches = 1
        
        //MARK: set panGestureRecognizer delegate
        panGestureRecognizer.delegate = self
        
        //MARK: Set panGestureRecognizer to view
        view.addGestureRecognizer(panGestureRecognizer)
        
        //MARK: - Add user interaction to you custom view or view
        view.isUserInteractionEnabled = true
    }
    
    //MARK: when tap is happened the below attribute will be executed
    @objc func panGestureRecognizerTapped() {
        print("Pan Gesture Recognizer Tapped")
    }
    
}

