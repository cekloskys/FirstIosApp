//
//  NewTableTableViewController.swift
//  FirstIosApp
//
//  Created by Sue Ceklosky on 10/28/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

class NewTableTableViewController: UITableViewController {

    // Create an array of String for the
    // names of the different monster images
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    // Table View Controllers inherit methods that allow
    // us to define what the Table Veiw Controller will
    // look like.
    // This method allows us to define the number of sections
    // it will have.
    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    // This method allows us to define the number of rows in
    // each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows - a count
        // of the number of monsters in String array
        return monsters.count
    }

    // This method allows us to define what each row
    // looks like
    // It gets called the same number of times as there
    // are rows in each section
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // include identifier of Table View Cell
        // dequeue Table View Cell that has specified
        // identifier and store it in cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterCell", for: indexPath)

        // Configure the cell...
        // textLabel, imageView, detailTextLable are
        // properties of the cell
        // change the attributes of those properties
        // the indexPath parameter (struct) that
        // encapsulates the section of the cell and
        // the row of the cell 
        // (0, 0), (0, 1), (0, 2), (0, 3)
        cell.textLabel?.text = monsters[indexPath.row]
        cell.imageView?.image = UIImage(named: monsters[indexPath.row])
        cell.detailTextLabel?.text = monsters[indexPath.row]

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
