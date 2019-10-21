//
//  Jokes.swift
//  FirstIosApp
//
//  Created by Sue Ceklosky on 10/21/19.
//  Copyright © 2019 susie. All rights reserved.
//

import Foundation

// Created
class Jokes {
    
    // Created a property that is an array of Strings
    // Used var to tell Swift that they array is going
    // to be changed
    // Would have used let if we wanted the array to be a
    // constant
    var jokes = [String] ()
    
    // Created init method
    // Is equivalent of Java constructor
    init () {
        // Included two Strings in the arrays
        jokes.append("What do you call a bear with no teeth? A gummy bear!")
        jokes.append("If con is the opposite of pro, it must mean Congress is the opposite of Progress!s")
    }
    
}
