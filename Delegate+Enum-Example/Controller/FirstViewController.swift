//
//  ViewController.swift
//  Delegate+Enum-Example
//
//  Created by Hubert Wang on 14/03/19.
//  Copyright © 2019 Hubert Wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.view.backgroundColor = .white
    }
    
    // MARK: - Actions
    @IBAction func handleEditButtonTapped(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: SegueIdentifier.firstToSecond.rawValue, sender: self)
    }
    
    // MARK: - Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SegueIdentifier.firstToSecond.rawValue {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.delegate = self
        }
    }
}

extension FirstViewController: SecondViewControllerDelegate {
    func changeBackgroundColour(to backgroundColour: UIColor) {
        self.view.backgroundColor = backgroundColour
    }
}

