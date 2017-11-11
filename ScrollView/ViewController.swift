//
//  ViewController.swift
//  ScrollView
//
//  Created by Lance Robbins on 11/11/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
/* Horizontal Scrolling
    override func viewDidAppear(_ animated: Bool) {
        // This will track how wide the scroller is off screen. Without this we couldn't scroll
        var contentWidth: CGFloat = 0.0
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            // toss in imageView variable so we can do some positional math to it
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            // The X at 0 is middle of frame/scrollview, and for each image in scrollview, it will move over an entire width allowing you to effectively scroll
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            
            // add to scroll width (horizontal scroll since width)
            contentWidth += newX
            
            
            // add the current subView (or image) in iteration to the scrollView
            scrollView.addSubview(imageView)
            
            /* Give the subView dimensions within the scrollview
             the newX will allow horizontal scrolling. If you use a newY I believe you can vertically scroll here. The first two -75 math done here is just the height and width /2 to properly center the image. Best done if those are stored in variables prior to this line of code; however, in this example we will skip best practice
             */
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        // scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        // This will take into account total contentWidth at this point and the full size of the frame/scrollview so you can properly scroll
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
    }
 */
    
    override func viewDidAppear(_ animated: Bool) {
        // This will track how wide the scroller is off screen. Without this we couldn't scroll
        var contentHeight: CGFloat = 0.0
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            // toss in imageView variable so we can do some positional math to it
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newY: CGFloat = 0.0
            
            // The X at 0 is middle of frame/scrollview, and for each image in scrollview, it will move over an entire width allowing you to effectively scroll
            newY = scrollView.frame.size.height / 2 + scrollView.frame.size.height * CGFloat(x)
            
            // add to scroll width (horizontal scroll since width)
            contentHeight += newY
            
            
            // add the current subView (or image) in iteration to the scrollView
            scrollView.addSubview(imageView)
            
            /* Give the subView dimensions within the scrollview
             the newX will allow horizontal scrolling. If you use a newY I believe you can vertically scroll here. The first two -75 math done here is just the height and width /2 to properly center the image. Best done if those are stored in variables prior to this line of code; however, in this example we will skip best practice
             */
            switch x {
            case 0:
                imageView.frame = CGRect(x: (scrollView.frame.size.width / 2) - 75, y: newY - 75, width: 150, height: 150)
            case 1:
                imageView.frame = CGRect(x: (scrollView.frame.size.width / 2) - 75, y: newY - 625, width: 150, height: 150)
            case 2:
                imageView.frame = CGRect(x: (scrollView.frame.size.width / 2) - 75, y: newY - 1175, width: 150, height: 150)
            default:
                imageView.frame = CGRect(x: (scrollView.frame.size.width / 2) - 75, y: newY - 75, width: 150, height: 150)
                
                //Best would be to do newY - (75 + (x * 550)) and just drop the switch statement
            }
        }
        
        // scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        // This will take into account total contentWidth at this point and the full size of the frame/scrollview so you can properly scroll
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: contentHeight)
    }

}

