//
//  AddPickerView.swift
//  NatiaL_HW20
//
//  Created by Natia's Mac on 09.08.22.
//

import Foundation
import UIKit

extension ViewController {
    
    func addPickerViewConstraints() {
        mypickerView.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            mypickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            mypickerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            mypickerView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configurePickerView() {
        mypickerView.backgroundColor = .white
        mypickerView.date = Date()
        mypickerView.locale = .current
        mypickerView.preferredDatePickerStyle = .wheels
    }
    
}
