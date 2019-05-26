//
//  ViewController.swift
//  debuet
//
//  Created by 片平駿介 on 2019/05/24.
//  Copyright © 2019 ShunsukeKatahira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //80%まで縮小
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }, completion: { (Bool) in
            
        })
        
        //8倍にする
        UIView.animate(withDuration: 0.6,
                       delay: 1.0,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.imageView.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
                        self.imageView.alpha = 0
        }, completion: { (Bool) in
            //アニメーションが終わったらimageViewを消す
            self.imageView.removeFromSuperview()
            // アニメーションが終わり次第メイン画面に遷移する
            self.performSegue(withIdentifier: "toMain", sender: nil)
            
        })
    }

}

