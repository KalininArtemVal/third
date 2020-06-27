//
//  Login.swift
//  Course2Week4Task1
//
//  Created by Калинин Артем Валериевич on 26.06.2020.
//  Copyright © 2020 e-Legion. All rights reserved.
//

import UIKit



class Password: UIViewController {
    
    @IBOutlet weak var oneLable: UILabel!
    @IBOutlet weak var twoLable: UILabel!
    @IBOutlet weak var threeLable: UILabel!
    @IBOutlet weak var forthLable: UILabel!
    @IBOutlet weak var fifthLable: UILabel!
    @IBOutlet weak var sixLeble: UILabel!
    
    
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
        setupStack()
    }
    
    func setupStack() {
        oneLable.layer.masksToBounds = true
        oneLable.layer.cornerRadius = oneLable.frame.size.width / 2
        oneLable.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        oneLable.layer.borderWidth = 1
        
        twoLable.layer.masksToBounds = true
        twoLable.layer.cornerRadius = oneLable.frame.size.width / 2
        twoLable.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        twoLable.layer.borderWidth = 1
        
        threeLable.layer.masksToBounds = true
        threeLable.layer.cornerRadius = threeLable.frame.size.width / 2
        threeLable.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        threeLable.layer.borderWidth = 1
        
        forthLable.layer.masksToBounds = true
        forthLable.layer.cornerRadius = forthLable.frame.size.width / 2
        forthLable.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        forthLable.layer.borderWidth = 1
        
        fifthLable.layer.masksToBounds = true
        fifthLable.layer.cornerRadius = fifthLable.frame.size.width / 2
        fifthLable.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        fifthLable.layer.borderWidth = 1
        
        sixLeble.layer.masksToBounds = true
        sixLeble.layer.cornerRadius = sixLeble.frame.size.width / 2
        sixLeble.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        sixLeble.layer.borderWidth = 1
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
