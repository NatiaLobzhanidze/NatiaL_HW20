//
//  ViewController.swift
//  NatiaL_HW20
//
//  Created by Natia's Mac on 09.08.22.
//

import UIKit

class ViewController: UIViewController {

    let mypickerView = UIDatePicker()
    let myButton = UIButton()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(mypickerView)
        view.addSubview(myButton)
        setUpView()
        
        
    }

    func setUpView() {

        addPickerViewConstraints()
        configurePickerView()
        
        addButtonConstraints()
        configureButton()
    }

}

