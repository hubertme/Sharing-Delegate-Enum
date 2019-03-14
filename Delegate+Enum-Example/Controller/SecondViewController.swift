//
//  SecondViewController.swift
//  Delegate+Enum-Example
//
//  Created by Hubert Wang on 14/03/19.
//  Copyright © 2019 Hubert Wang. All rights reserved.
//

import UIKit

enum SecondVCButtonsOrder: Int {
    case red = 0
    case blue = 1
    case green = 2
    case yellow = 3
    case black = 4
}

class SecondViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var colourButtons: [UIButton]!
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sort colour buttons for security
        colourButtons.sort { (button1, button2) -> Bool in
            if button1.tag < button2.tag {
                return true
            }
            return false
        }
    }
    
    // MARK: - Actions
    @IBAction func handleColourButtonTapped(_ sender: UIButton) {
//        var colourOrder: SecondVCButtonsOrder
        colourButtons.forEach { (button) in
            if button.tag == sender.tag {
                guard let colourOrder = SecondVCButtonsOrder(rawValue: button.tag) else { return }
                print(colourOrder)
            }
        }
    }

}
