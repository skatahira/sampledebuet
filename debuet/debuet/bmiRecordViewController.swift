//
//  bmiRecordViewController.swift
//  debuet
//
//  Created by 片平駿介 on 2019/05/25.
//  Copyright © 2019 ShunsukeKatahira. All rights reserved.
//

import UIKit

class bmiRecordViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // キーボードの入力を数値と小数点にする
        heightInput.keyboardType = UIKeyboardType.decimalPad
        weightInput.keyboardType = UIKeyboardType.decimalPad
    }
    
    @IBAction func didClickButton(_ sender: UIButton) {
        let height: Float? = Float(heightInput.text!)
        let weight: Float? = Float(weightInput.text!)
        let heightM = height! / 100.0
        let bmiValue:String = String(weight! / (heightM * heightM))
        performSegue(withIdentifier: "toNext", sender: bmiValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextVC = segue.destination as! bmiResultViewController
            nextVC.value = sender as! String
        }
    }
    
    // TextField以外の部分をタッチすることでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 身長・体重が入力されていない場合、ボタンを非活性
    func textFieldDidEndEditing(_ textField: UITextField) {
        if heightInput.text == "" || weightInput.text == "" {
            button.isEnabled = false
        } else {
            button.isEnabled = true
        }
    }
    
}
