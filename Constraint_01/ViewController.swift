//
//  ViewController.swift
//  Constraint_01
//
//  Created by Denis Andreev on 5/10/19.
//  Copyright © 2019 353. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var square : UIView = {
        var square = UIView()
        square.frame  = CGRect(x: 0, y: 0, width: 20, height: 20)
        square.backgroundColor = .red
        square.translatesAutoresizingMaskIntoConstraints = false
        return square
    }()

    override func viewDidLoad() {
        self.view.addSubview(square)
        creatingSquareConstraints()
    }
    
    func creatingSquareConstraints(){
        NSLayoutConstraint(item: square,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .leadingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: square,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .trailingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: square,
                           attribute: .topMargin,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .topMargin,
                           multiplier: 1,
                           constant: 88).isActive = true
        NSLayoutConstraint(item: square,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: square,
                           attribute: .width,
                           multiplier: 1,
                           constant: 0).isActive = true
        
    }

}

