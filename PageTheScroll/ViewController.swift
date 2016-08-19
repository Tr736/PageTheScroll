//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Thomas Richardson on 8/19/16.
//  Copyright © 2016 Thomas Richardson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
 
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        var contentWidth : CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            let scrollWidth = scrollView.frame.size.width
            
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            
            newX = (scrollWidth / 2) + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
        

    }


}




