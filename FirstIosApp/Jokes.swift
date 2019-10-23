//
//  Jokes.swift
//  FirstIosApp
//
//  Created by Sue Ceklosky on 10/21/19.
//  Copyright © 2019 susie. All rights reserved.
//

import Foundation

// Create Jokes class
class Jokes {
    
    // Create a property that is an array of Strings
    // Use var to tell Swift that they array is going
    // to be changed
    // Would have used let if we wanted the array to
    // be a constant
    var jokes = [String] ()
    
    // Create init method
    // Is equivalent of Java constructor
    init () {
        // Include two Strings in the array
        jokes.append("What do you call a bear with no teeth? A gummy bear!")
        jokes.append("If con is the opposite of pro, it must mean Congress is the opposite of Progress!")
    }
}
