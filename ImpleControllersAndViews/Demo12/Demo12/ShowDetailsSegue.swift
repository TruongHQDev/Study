//
//  ShowDetailsSegue.swift
//  Demo12
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import Foundation
import UIKit

class ShowDetailsSegue: UIStoryboardSegue {
    override func perform() {
        destination.transitioningDelegate = self
        super.perform()
    }
}

extension ShowDetailsSegue: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning?
    {
        return ShowDetailsAnimator()
    }
}
