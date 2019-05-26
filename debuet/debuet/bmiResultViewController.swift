//
//  bmiResultViewController.swift
//  debuet
//
//  Created by 片平駿介 on 2019/05/25.
//  Copyright © 2019 ShunsukeKatahira. All rights reserved.
//

import UIKit

class bmiResultViewController: UIViewController {
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabel2: UILabel!
    
    var value = ""
    let lowWeight = 18.5
    let hightWeight1 = 25.0
    let hightWeight2 = 30.0
    let hightWeight3 = 35.0
    let hightWeight4 = 40.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bmi: Double = atof(value)
        let bmiW = bmi * 10
        let checkBmi = round(bmiW) / 10
        bmiResult.text = String(checkBmi)
        
        if checkBmi < lowWeight {
            messageLabel.text = "その調子でダイエットやろう！"
        } else if checkBmi < hightWeight1 {
            messageLabel.text = "健康に悪いです。"
            messageLabel2.text = "痩せるか太るかしてください"
        } else if checkBmi < hightWeight2 {
            messageLabel.text = "まだまだ努力が足りません"
            messageLabel2.text = "いっぱい食べましょう"
        } else if checkBmi < hightWeight3 {
            messageLabel.text = "その調子で体重を増やそう！"
        } else if checkBmi < hightWeight4 {
            messageLabel.text = "とても素晴らしい！"
        } else {
            messageLabel.text = "あなたには誰も敵いません！"
        }
        
    
    }
}
