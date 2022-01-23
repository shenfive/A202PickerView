//
//  Page2ViewController.swift
//  A202PickerView
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    
    @IBOutlet weak var theTextView: UITextView!
    @IBOutlet weak var myLabel: UILabel!
    var bld = ""
    var str = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        print("page2 :\(bld) : \(str)")
        
        theTextView.text += "\(str) \n \(bld) 型的運勢是......\n"
        myLabel.alpha = 0
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3.0,
                                                       delay: 0.5) {
            self.myLabel.alpha = 1
            self.myLabel.center = self.view.center
        } completion: { animation in
            
        }

        
        
        
        
    }
    

}
