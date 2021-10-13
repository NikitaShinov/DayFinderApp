//
//  ViewController.swift
//  First Project
//
//  Created by Никита Шинов on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTF: UITextView!
    @IBOutlet weak var monthTF: UITextView!
    @IBOutlet weak var yearTF: UITextView!
    @IBOutlet weak var resultTF: UITextView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents ()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter ()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekday = dateFormatter.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        resultTF.text = capitalizedWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

