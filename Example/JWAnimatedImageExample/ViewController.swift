//
//  ViewController.swift
//  JWAnimatedImage
//
//  Created by Jiawei Wang on 03/04/2016.
//  Copyright (c) 2016 Jiawei Wang. All rights reserved.
//

import UIKit
import JWAnimatedImage
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageData = NSData(contentsOfURL:NSBundle.mainBundle().URLForResource("test", withExtension: "gif")!)
        let image = UIImage()
        image.AddGifFromData(imageData!)
        let manager = JWAnimationManager(memoryLimit:20)
        let imageview = UIImageView()
        imageview.AddGifImage(image,manager:manager,loopTime:2)
        imageview.frame = CGRect(x: 0.0, y: 50.0, width: 400.0, height: 224.0)
        view.addSubview(imageview)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
