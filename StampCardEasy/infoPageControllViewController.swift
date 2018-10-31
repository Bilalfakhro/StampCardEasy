//
//  infoPageControllViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-26.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class infoPageControllViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoLabel: UILabel!
    
    var images: [String] = ["0", "1", "2"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControll.numberOfPages = images.count
        for index in 0..<images.count{
            frame.origin.x = scrollView.frame.size.width
                * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgview = UIImageView(frame: frame)
            imgview.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgview)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: (scrollView.frame.size.height))
        
        scrollView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any recourses taht can be recreated.
    }
    
    // Scrollview Method
    // ============================
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControll.currentPage = Int(pageNumber)
    }
    
    @IBAction func infoBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "infoBackHomeSegue", sender: self)
    }

}
