//
//  ViewController.swift
//  practicum-counter
//
//  Created by Максим Фролов on 13.03.2023.
//

import UIKit

class ViewController: UIViewController {
    private var counter = 0
    
    @IBOutlet weak var counterLabel: UILabel! //счетчик
    @IBOutlet weak var counterButton: UIButton! //Кнопка
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateCounterLabel()
        setupButton()
    }
    
    private func setupButton() {
        counterButton.layer.cornerRadius = 5
        counterButton.layer.masksToBounds = true
    }

    private func updateCounterLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        counter += 1
        updateCounterLabel()
    }
}
