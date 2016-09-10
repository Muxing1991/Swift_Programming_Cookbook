//
//  ViewController.swift
//  BlurEffect
//
//  Created by 杨威 on 16/9/10.
//  Copyright © 2016年 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var imageView: UIImageView!
  var image = UIImage(named: "Yosemite")
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    imageView = UIImageView(frame: view.bounds)
    imageView.image = image
    imageView.center = view.center
    imageView.contentMode = .ScaleAspectFit
    view.addSubview(imageView)
    
    //blur effect 

    let blurEffect = UIBlurEffect(style: .Dark)
    let blurView = UIVisualEffectView(effect: blurEffect)
    blurView.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
    blurView.center = view.center
    view.addSubview(blurView)
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

