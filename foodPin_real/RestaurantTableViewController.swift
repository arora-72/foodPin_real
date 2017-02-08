//
//  RestaurantTableViewController.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 04/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

var imagePicked = String()
var namepicked = String()
var typePicked = String()
var locationTyped = String()

class RestaurantTableViewController: UITableViewController {
    
    
    
    //code for seague overriding
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! restaurantDetailViewController
                
                //passing strings in the window
                destinationController.restaurantImage = restaurantImages[indexPath.row]
                destinationController.restaurantName = restaurantNames[indexPath.row]
                destinationController.restaurantLocation = restaurantLabel[indexPath.row]
                destinationController.restaurantType = restaurantType[indexPath.row]
                
            }
        }

    }
    
    // updating accesory view
    var restaurantIsVisited = [Bool](repeating: false, count:21)
    
//    var restaurantIsVisited = [false, false, false, false, false, false, false,false, false, false, false, false, false, false, false, false, false, false,false, false, false]

    


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
        
        //let cellIdentifier = cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
        // Configure the cell...

        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
        cell.locationLabel.text=restaurantLabel[indexPath.row]
        cell.typeLabel.text=restaurantType[indexPath.row]
        
        // for updating accesory view
        cell.accessoryType = restaurantIsVisited[indexPath.row] ? .checkmark : .none
        return cell
    }
    
    //creating menu for each row
    
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //creating an option menu  as action sheet
        
        let optionMenu = UIAlertController(title:nil,message: "what do you want to do?",preferredStyle:.actionSheet)
        
        //adding actions to menu
        let cancelActions = UIAlertAction(title:"cancel",style:.cancel,handler:nil)
        optionMenu.addAction(cancelActions)
        
        //displaying the menu
        self.present(optionMenu,animated:true,completion:nil)
        
        //adding call action handler
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController(title: "Service Unavailable", message:
                "Sorry, the call feature is not available yet. Please retry later.",
                                                 preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler:
                nil))
            self.present(alertMessage, animated: true, completion: nil)
        }
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)",
            style: UIAlertActionStyle.default, handler: callActionHandler)
        optionMenu.addAction(callAction)
            
           
        //code for i have been here
            
        
        let isVisitedAction = UIAlertAction(title: "i have been here", style: .default, handler: {
            
            (action:UIAlertAction!) -> Void in
            
            let cell = tableView.cellForRow(at: indexPath)
            self.restaurantIsVisited[indexPath.row] = true
            
            
            cell?.accessoryType = .checkmark
            cell?.tintColor = UIColor.white
            
        })
            optionMenu.addAction(isVisitedAction)
            
 
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
