//
//  SecondViewController.swift
//  Delegate+Enum-Example
//
//  Created by Hubert Wang on 14/03/19.
//  Copyright © 2019 Hubert Wang. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func changeBackgroundColour(to backgroundColour: UIColor)
}

class SecondViewController: UIViewController {
    
    // MARK: - Attributes
    var delegate: SecondViewControllerDelegate?
    
    // MARK: - Outlets
    @IBOutlet var colourButtons: [UIButton]!
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    @IBAction func handleColourButtonTapped(_ sender: UIButton) {
        colourButtons.forEach { (button) in
            if button.tag == sender.tag {
                delegate?.changeBackgroundColour(to: button.backgroundColor ?? .white)
            }
        }
    }

}
