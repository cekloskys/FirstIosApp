//
//  NewViewController.swift
//  FirstIosApp
//
//  Created by Sue Ceklosky on 10/28/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    // Gives NewViewController access to the
    // Label
    @IBOutlet weak var tipLabel: UILabel!
    
    // Create a String that will store the calculated tip
    // sent to it from ViewController
    var tipToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display the calculated tip sent from
        // ViewController in Label
        tipLabel.text = tipToShow
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
