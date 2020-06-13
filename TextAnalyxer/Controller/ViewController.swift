//
//  ViewController.swift
//  TextAnalyxer
//
//  Created by Harshit Gajjar on 10/30/19.
//  Copyright © 2019 ThinkX. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var textField: UITextField!

    var viewmodel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
        textField.becomeFirstResponder()
    }
    
    @IBAction func btnPressed(_ sender: Any){
        guard textField.text != "" else{
            labelType.text = "Error, enter some sentence"
            return
        }
        
        guard let sentense = textField?.text else {return}
        viewmodel = ViewModel(text: sentense)
        labelType.text = viewmodel.sentiment.text
        textField.text = ""
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        btnPressed(textField)
        return true
    }


}

