//
//  ViewController.swift
//  Sampleapp
//
//  Created by 久保政人 on 2021/07/02.
//

import UIKit

class ViewController: UIViewController {
    
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let contentView = UIView()
        contentView.frame.size = CGSize(width: view.frame.size.width, height: 340)
        contentView.center = CGPoint(x: view.center.x, y: view.center.y)
        contentView.backgroundColor = .white
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y:0, width: view.frame.size.width, height: view.frame.size.height / 2)
        gradientLayer.colors = [colors.bluePurple.cgColor, colors.blue.cgColor]
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x:1 , y:1)
        view.layer.insertSublayer(gradientLayer, at:0)
    }


}

