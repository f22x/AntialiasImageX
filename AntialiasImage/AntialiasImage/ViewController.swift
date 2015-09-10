//
//  ViewController.swift
//  AntialiasImage
//
//  Created by xinglei on 15/9/10.
//  Copyright © 2015年 Zplay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myImage = UIImage(named: "12345.png")
        myImage!.antialiasImage()
        let myImageView = UIImageView(image:myImage!.antialiasImage())
        myImageView.frame = CGRectMake(0, 0, view.bounds.size.width-50, view.bounds.size.height/2)
        myImageView.center = CGPointMake(view.center.x, view.center.y)
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = myImageView.bounds.size.width/2
        view.addSubview(myImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

