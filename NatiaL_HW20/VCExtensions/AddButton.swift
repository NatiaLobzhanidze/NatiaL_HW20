//
//  AddButton.swift
//  NatiaL_HW20
//
//  Created by Natia's Mac on 09.08.22.
//

import Foundation
import UIKit
extension ViewController {
    func addButtonConstraints() {
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            myButton.topAnchor.constraint(equalTo: mypickerView.bottomAnchor, constant: 40),
            myButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func configureButton() {
        myButton.setTitle(" Calculate Prime Numbers ", for: .normal)
        myButton.backgroundColor = .white
        myButton.setTitleColor(.blue, for: .normal)
        myButton.layer.cornerRadius = 15
        myButton.addTarget(self, action: #selector(calculateBtn), for: .touchUpInside)
    }
    
    @objc func calculateBtn(_ sender: UIButton) {
        let toNumb = 100_000
        sender.isEnabled = false
        sender.isUserInteractionEnabled = false
        myButton.alpha = 0.5
       
        DispatchQueue.global().async { [self] in
            self.findPrimes(to: toNumb) {(numb) in
                for i in 2...numb/2 {
                    if numb % i == 0 {
                        return false
                    }
                }
                return true
            }
            
            DispatchQueue.main.async {
                sender.isEnabled = true
                sender.isUserInteractionEnabled = true
                myButton.alpha = 1
            }
        
        }

    }
    func findPrimes(to number: Int, byClosure: (Int)-> Bool) {
        print(2)
        print(3)
        for num in stride(from: 5, through: number, by: 2) {
            if byClosure(num) {
                print(num)
            
            }
        }
        
    }
  
}

