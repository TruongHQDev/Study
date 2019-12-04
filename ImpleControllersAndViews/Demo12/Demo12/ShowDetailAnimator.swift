//
//  ShowDetailAnimator.swift
//  Demo12
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//


import UIKit

class ShowDetailsAnimator: NSObject {

}

extension ShowDetailsAnimator: UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard
            let toVC = transitionContext.viewController(forKey: .to) as? VC1ViewController,
            let fromVC = transitionContext.viewController(forKey: .from) as? ViewController else {
            return
        }
        
        let toView = transitionContext.view(forKey: .to)
        
        if let view = toView {
            transitionContext.containerView.addSubview(view)
        }
        
        toView?.frame = fromVC.imageView.frame
        toView?.layoutIfNeeded()
        
        let duration = transitionDuration(using: transitionContext)
        let frame = transitionContext.finalFrame(for: toVC)
        toVC.titleLabel.alpha = 0.0
        
        UIView.animate(withDuration: duration, animations: {
            toVC.titleLabel.alpha = 1.0
            toView?.frame = frame
            toView?.layoutIfNeeded()
        }) { (success) in
            transitionContext.completeTransition(true)
        }
    }
}
