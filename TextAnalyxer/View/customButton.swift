//
//  customButton.swift
//  TextAnalyxer
//
//  Created by Harshit Gajjar on 10/30/19.
//  Copyright © 2019 ThinkX. All rights reserved.
//

import UIKit

class customButton: UIButton {


    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = frame.height / 2
        self.layer.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.borderWidth = 3.0
        clipsToBounds = true
    }

}
