//
//  ViewModel.swift
//  TextAnalyxer
//
//  Created by Harshit Gajjar on 10/30/19.
//  Copyright © 2019 ThinkX. All rights reserved.
//

import Foundation

class ViewModel{
    private(set) public var textData: String
    lazy private(set) public var sentiment: Sentiment = {
       // this is nothing but auto-completinh closure...
        //Code here is executed only when we initilize sentiment
        
        let prediction = try? textAnalyzer().prediction(text: textData)
        guard let label = prediction?.label else {return Sentiment(text: "Error, couldnt find answer.")}
        
        return Sentiment(text: emojify(label: label))
    }()
    
    init(text: String) {
        self.textData = text
    }
    
    
    func emojify(label: String) -> String{
        switch label {
        case "kindness":
            return "kindness🤗"
            
        case "encouragement":
            return "encouragement🥴"
            
        case "mean":
            return "mean🤬"
            
        case "neutral":
            return "neutral😶"
        default:
            return "neutral😶"
        }
    }
}
