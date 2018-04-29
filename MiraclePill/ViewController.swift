//
//  ViewController.swift
//  MiraclePill
//
//  Created by Georgi Teoharov on 28.04.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var agePicker: UIPickerView!
    
    @IBOutlet weak var agePickerButton: UIButton!
    
    var ages: [Int] = []
    
    func createAgesPicker() -> [Int] {
        for age in 6...85 {
            ages.append(age)
        }
        return ages
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = createAgesPicker()
        agePicker.dataSource = self
        agePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func agePickerPressedButton(_ sender: Any) {
        agePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(ages[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        agePickerButton.setTitle(String("Your Age: \(ages[row])"), for: UIControlState.normal)
        agePicker.isHidden = true
    }
    

}

