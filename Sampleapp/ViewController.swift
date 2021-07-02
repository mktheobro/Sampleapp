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
        contentView.layer.cornerRadius = 30
        contentView.layer.shadowOffset = CGSize(width: 2, height: 2)
        contentView.layer.shadowColor = UIColor.gray.cgColor
        contentView.layer.shadowOpacity = 0.5
        view.addSubview(contentView)
        
        view.backgroundColor = .systemGray6
        
        let labelFont = UIFont.systemFont(ofSize: 15, weight: .heavy)
        let size = CGSize(width: 150, height: 50)
        let color = colors.bluePurple
        let leftX = view.frame.size.width * 0.33
        let rightX = view.frame.size.width * 0.80
        
        setUpLabel("Covid in Japan",
                   size: CGSize(width: 180, height: 35),
                   centerX: view.center.x - 20,y: -60,
                   font: .systemFont(ofSize: 25, weight: .heavy),
                   color: .white, contentView)
        
        setUpLabel("PCR数", size: size, centerX: leftX, y: 20, font: labelFont, color: color, contentView)
        setUpLabel("感染者数", size: size, centerX: rightX, y: 20, font: labelFont, color: color, contentView)
        setUpLabel("入院数", size: size, centerX: leftX, y: 120, font: labelFont, color: color, contentView)
        setUpLabel("重傷者数", size: size, centerX: rightX, y: 120, font: labelFont, color: color, contentView)
        setUpLabel("死者数", size: size, centerX: leftX, y: 220, font: labelFont, color: color, contentView)
        setUpLabel("通院者数", size: size, centerX: rightX, y: 220, font: labelFont, color: color, contentView)
    }
    
    func setUpLabel(_ text: String, size: CGSize, centerX: CGFloat,y: CGFloat, font: UIFont, color: UIColor, _ parentView: UIView){
        let label = UILabel()
        label.text = text
        label.frame.size = size
        label.center.x = centerX
        label.frame.origin.y = y
        label.font = font
        label.textColor = color
        parentView.addSubview(label)
    }
    
    func setUpGradation(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y:0, width: view.frame.size.width, height: view.frame.size.height / 2)
        gradientLayer.colors = [colors.bluePurple.cgColor, colors.blue.cgColor]
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x:1 , y:1)
        view.layer.insertSublayer(gradientLayer, at:0)
    }


}

