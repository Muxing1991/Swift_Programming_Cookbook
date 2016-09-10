//
//  ViewController.swift
//  AttributedString
//
//  Created by 杨威 on 16/9/10.
//  Copyright © 2016年 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  func myAttributedText() -> NSAttributedString{
    let string = "Xcode Debug"
    
    let result = NSMutableAttributedString(string: string)
    
    let attributeForFirstWord = [
      NSFontAttributeName: UIFont.boldSystemFontOfSize(60),
      NSForegroundColorAttributeName: UIColor.grayColor(),
      NSBackgroundColorAttributeName: UIColor.redColor()
    ]
    
    let shadow = NSShadow()
    shadow.shadowColor = UIColor.grayColor()
    shadow.shadowOffset = CGSize(width: 4, height: 4)
    
    let attributeForSecondWord = [
      NSFontAttributeName: UIFont.boldSystemFontOfSize(60),
      //NSForegroundColorAttributeName ： 字体的颜色
      NSForegroundColorAttributeName: UIColor.whiteColor(),
      //NSBackgroundColorAttributedName ： 背景颜色
      NSBackgroundColorAttributeName: UIColor.blueColor(),
      NSShadowAttributeName: shadow
    ]
    // 这里要转化为NSString
    result.setAttributes(attributeForFirstWord, range: NSString(string: string).rangeOfString("Xcode"))
    result.setAttributes(attributeForSecondWord, range: NSString(string: string).rangeOfString("Debug"))
    
    return NSAttributedString(attributedString: result)
  }

  var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    label = UILabel()
    label.backgroundColor = UIColor.clearColor()
    //使用attributedText属性
    label.attributedText = myAttributedText()
    label.sizeToFit()
    label.center = view.center
    view.addSubview(label)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

