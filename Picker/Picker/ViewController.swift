//
//  ViewController.swift
//  Picker
//
//  Created by 杨威 on 16/9/11.
//  Copyright © 2016年 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  var picker: UIPickerView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    picker = UIPickerView()
    picker.dataSource = self
    picker.center = view.center
    picker.delegate = self
    view.addSubview(picker)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func viewDidDisappear(animated: Bool) {
    super.viewDidDisappear(animated)
    
  }


}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
  //传入一个pickerView作为参数 返回希望画出多少组件component
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    if pickerView == picker{
      return 2
    }
    return 0
  }
  
  //指明组件要渲染多少行
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if pickerView == picker{
      return 10
    }
    return 0
  }
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return "第\(row)行"
  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    print("row: \(row) component: \(component)")
  }
  
  
}
