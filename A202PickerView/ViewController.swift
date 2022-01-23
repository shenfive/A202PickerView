//
//  ViewController.swift
//  A202PickerView
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }


    
    //MARK: Picker View Data Source & Delegate
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Hello!"
    }
    
    
    
}

