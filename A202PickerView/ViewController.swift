//
//  ViewController.swift
//  A202PickerView
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var selectedAst: UILabel!
    @IBOutlet weak var selectedBlo: UILabel!
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
       var bloudType = ["請選擇你的血型","A","B","O","AB"]

    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        
        switch segue.identifier{
        case "goNextPage":
            if let nextVC = segue.destination as? Page2ViewController{
                nextVC.bld = selectedBlo.text ?? "unknow"
                nextVC.str = selectedAst.text ?? "unknow"
            }
        default:
            break
        }
        
        
        
        
    }


    
    //MARK: Picker View Data Source & Delegate
    
    //有幾欄？
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return bloudType.count
        case 1:
            return astrological.count
        default:
            return 0
        }
        
        
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return bloudType[row]
        case 1:
            return astrological[row]
        default:
            return ""
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row:\(row)  component:\(component)")
        switch component{
        case 0:
            if row != 0{
                selectedBlo.text = bloudType[row]
            }
            break
        case 1:
            if row != 0{
                selectedAst.text = astrological[row]
            }
            break
        default:
            break
        }
        if pickerView.selectedRow(inComponent: 0) != 0 &&
            pickerView.selectedRow(inComponent: 1) != 0 {
            self.performSegue(withIdentifier: "goNextPage", sender: nil)
        }
        
        
        
        
    }
    
    
    
}

