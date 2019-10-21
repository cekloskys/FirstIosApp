//
//  ViewController.swift
//  FirstIosApp
//  Manages the single screen in the app
//
//  Created by Sue Ceklosky on 10/21/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

// Like MainActivity.java in Android
// Subclass of UIViewController
class ViewController: UIViewController {

    // Gave ViewController access to the
    // ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // Created an array of String for the
    // names of the different monster images
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    // Called when scene is accessed
    // Since this is the launcher scene,
    // that means it will be called when
    // the app launchess
    // Include initialization work here
    // Like onCreate method in Android
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Created an instance of a Joke
        let joke = Jokes()
        
        // Iterated through jokes array
        for joke in joke.jokes {
            // Printed out jokes to debug area
            print(joke)
        }
        
    }

    // Gave ViewController ability to respond
    // the selection of segments in the Segmented
    // Control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // Changed image based on the segement
        // selected
        
        // Index contained of segement selected (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        // Set the image in image view to a new UIImage
        // The new image is whatever element in the monsters
        // array that matches up with the index
        // (0 - Astro, 1 - Fluffy, 2 - Munchie, 3 - Squido
        monsterImageView.image = UIImage(named: monsters[index])
    }
}
