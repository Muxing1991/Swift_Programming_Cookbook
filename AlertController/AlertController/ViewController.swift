//
//  ViewController.swift
//  AlertController
//
//  Created by 杨威 on 16/9/10.
//  Copyright © 2016年 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  var alertController: UIAlertController?
  override func viewDidLoad() {
    super.viewDidLoad()
    
    alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .Alert)
    alertController?.addTextFieldWithConfigurationHandler({ (textField) in
      textField.placeholder = "nimabide"
    })
    
    alertController?.addAction(UIAlertAction(title: "Next", style: .Default, handler: { [weak self](action) in
      if let textField = self?.alertController?.textFields?.first{
        let input = textField.text
        print(input)
      }
    }))
    
    alertController?.addAction(UIAlertAction(title: "Fake", style: .Destructive, handler: { [weak self] (action) in
      self!.view.backgroundColor = UIColor.blackColor()
    }))
    
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    presentViewController(alertController!, animated: true, completion: nil)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

