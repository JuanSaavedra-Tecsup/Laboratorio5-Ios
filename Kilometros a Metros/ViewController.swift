//
//  ViewController.swift
//  Kilometros a Metros
//
//  Created by mbtec22 on 4/29/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    let metroUnit : Double = 0.001
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Escriba la distancia a convertir"
    }
    
    @IBAction func convertPressed(_ sender: Any) {
        let selectedIndex = segmentedControl.selectedSegmentIndex
        print("Hemos seleccionado \(selectedIndex)")
        let textFieldVal = Double(distanceTextField.text!)!
        
        if selectedIndex == 0 {
            let convertedValue = textFieldVal / metroUnit
            let initValue = String(format: "%.2f", textFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            resultLabel.text = " \(initValue) Km = \(endValue) metros"
        }else{
            let convertedValue = textFieldVal * metroUnit
            let initValue = String(format: "%.2f", textFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            resultLabel.text = " \(initValue) metros = \(endValue) Km"
        }
    }
}

