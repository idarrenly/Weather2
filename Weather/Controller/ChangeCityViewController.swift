//
//  ChangeCityViewController.swift
//  Weather
//
//  Created by dly on 8/30/18.
//  Copyright © 2018 dly. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {

    @IBOutlet weak var changeCityTextField: UITextField!
    
    var delegate: ChangeCityDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func getWeatherPressed(_ sender: UIButton) {
        let cityName = changeCityTextField.text!
        delegate?.userEnteredANewCityName(city: cityName)
        dismiss(animated: true, completion: nil)
    }
    
}
