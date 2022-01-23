//
//  Page2ViewController.swift
//  A202PickerView
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    
    @IBOutlet weak var theTextView: UITextView!
    var bld = ""
    var str = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        print("page2 :\(bld) : \(str)")
        
        theTextView.text += "\(str) \n \(bld) 型的運勢是......\n 大吉"
        
        
    }
    

}
