//
//  ViewController.swift
//  FirstIosApp
//  Manages the single scene in the app
//
//  Created by Sue Ceklosky on 10/21/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

// Like MainActivity.java in Android
// Subclass of UIViewController
class ViewController: UIViewController {

    // Gives ViewController access to the
    // ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // Create an array of String for the
    // names of the different monster images
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    // IBOutlets are created as Optionals
    // This means that they may contain a value
    // or they may contain nil
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    // Create a String that will store the calculated tip
    var calculatedTip = ""
    
    // Called when scene is accessed
    // Since this is the launcher scene,
    // that means it will be called when
    // the app launches
    // Include initialization work here
    // Like onCreate method in Android
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creat an instance of a Joke
        let joke = Jokes()
        
        // Iterate through jokes array
        for joke in joke.jokes {
            // Print out jokes to debug area
            print(joke)
        }
        
    }

    // Gives ViewController ability to respond
    // to the selection of segments in the
    // Segmented Control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // Change image based on the segement
        // selected
        
        // Get index of segement selected (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        // Set the image in Image View to a new UIImage
        // The new UIImage is the element in the monsters
        // array that matches the index
        // (0 - Astro, 1 - Fluffy, 2 - Munchie, 3 - Squido
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
    // Give ViewController ability to respond to
    // the Button being pushed
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var tip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        // Get the values input in the Text Fields and
        // assign them to constants
        // Use optional binding to find out if the Text
        // Fields contain a value or nil
        if let amount = amountTextField.text, let percent = tipPercentTextField.text {
            
            // Trim whitespace from constants
            let trimmedAmount = amount.trimmingCharacters(in: .whitespaces)
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
            
            // Check to make sure the trimmed constants aren't empty
            if (!trimmedAmount.isEmpty && !trimmedPercent.isEmpty) {
                
                // Convert trimmed constants to Doubles
                dAmount = Double(trimmedAmount)!
                dPercent = Double(trimmedPercent)!
                
                // Calculate tip
                tip = dAmount * dPercent
            }
            
        }
        
        // Convert calculated tip to a String
        // Use interpolation to embed the
        // calculated String tip in another String
        // Display String in Label
        tipLabel.text = "Tip is $\(String(tip))"
        
        // Store calculated tip in String
        calculatedTip = "Tip is $\(String(tip))"
        
        // Seque to New View Controller Scene
        // This method requires the prepare method
        // be overridden
        performSegue(withIdentifier: "GoToNewView", sender: nil)
    }
    
    // This method creates an instance of the View Controller
    // that is being segued to and it passes the View
    // Controller the calculated tip
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // If we're segueing to the View Controller that
        // has the identifier GoToNewView
        if segue.identifier == "GoToNewView" {
            
            // Create an instance of that View Controller
            let newViewController = segue.destination as? NewViewController
            
            // Set its tip to show property equal to
            // calculated tip
            newViewController?.tipToShow = calculatedTip
        }
    }
}
