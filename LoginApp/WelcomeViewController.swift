//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Эдос Эксузян on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    private let firstColor = UIColor(
        red: 200/250,
        green: 100/250,
        blue: 120/250,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 100/250,
        green: 150/250,
        blue: 220/250,
        alpha: 1
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        welcomeLabel.text = "Welcome, \(user)!"
    }
}

extension UIView{
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
