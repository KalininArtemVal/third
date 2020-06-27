//
//  Login.swift
//  Course2Week4Task1
//
//  Created by Калинин Артем Валериевич on 26.06.2020.
//  Copyright © 2020 e-Legion. All rights reserved.
//

import UIKit



class Password: UIViewController {
    

    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var forth: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    func setupButtons() {
        one.layer.cornerRadius = one.frame.size.width / 2
        one.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        one.layer.borderWidth = 1
        two.layer.cornerRadius = one.frame.size.width / 2
        two.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        two.layer.borderWidth = 1
        three.layer.cornerRadius = one.frame.size.width / 2
        three.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        three.layer.borderWidth = 1
        forth.layer.cornerRadius = one.frame.size.width / 2
        forth.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        forth.layer.borderWidth = 1
        five.layer.cornerRadius = one.frame.size.width / 2
        five.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        five.layer.borderWidth = 1
        six.layer.cornerRadius = one.frame.size.width / 2
        six.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        six.layer.borderWidth = 1
        seven.layer.cornerRadius = one.frame.size.width / 2
        seven.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        seven.layer.borderWidth = 1
        eight.layer.cornerRadius = one.frame.size.width / 2
        eight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        eight.layer.borderWidth = 1
        nine.layer.cornerRadius = one.frame.size.width / 2
        nine.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nine.layer.borderWidth = 1
        zero.layer.cornerRadius = one.frame.size.width / 2
        zero.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        zero.layer.borderWidth = 1
    }
    
    
}
