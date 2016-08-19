//
//  ClipView.swift
//  PageTheScroll
//
//  Created by Thomas Richardson on 8/19/16.
//  Copyright © 2016 Thomas Richardson. All rights reserved.
//

import UIKit

class ClipView: UIView {
    @IBOutlet var scrollView: UIScrollView!

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        return self.point(inside: point, with: event) ? scrollView : nil
//        return self.pointInside(point, withEvent: event) ? scrollView : nil

   
    }

}
