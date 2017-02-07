//
//  Restaurant1TableViewController.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 06/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class Restaurant1TableViewController: UITableViewController {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "PetiteOyster", "For Kee Restaurant", "Po'Atelier", "Bourke Street Bakery", "Haigh'sChocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats",
                           "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina",
                           "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
                            "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
                            "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
                            "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
                            "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
                            "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    var restaurantLabel = ["sharingan", "kdjsbc", "kabkjsbx", "oksxlmx", "njnxxz", "police", "xmzxx", "Bourke Str", "vcgdcs", "minsibx", "kjbjknx", "inxsa", "sxmnbzbx",
                           "xbjk", "lokxsinx", "wfuqwf", "zvgvsza", "maonsw",
                           "msjnsk", "Dsmasw d", "njxnnsja"]
    
    var restaurantType = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                          "n", "o", "p", "q", "r","s", "t", "u"]
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count

    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Customcell = tableView.dequeueReusableCell(withIdentifier: "Customcell", for: indexPath) as! sharinganTableViewCell
        // Configure the cell...
        Customcell.nameLabel1.text = restaurantNames[indexPath.row]
        Customcell.thumbnailImageView1.image = UIImage(named: restaurantImages[indexPath.row])
        Customcell.locationLabel1.text=restaurantLabel[indexPath.row]
        Customcell.typeLabel1.text=restaurantType[indexPath.row]


        return Customcell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
