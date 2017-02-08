//
//  restaurantDetailViewController.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 07/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class restaurantDetailViewController: UIViewController {
    
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var restaurantNameLabel:UILabel!
    @IBOutlet var restaurantTypeLabel:UILabel!
    @IBOutlet var restaurantLocationLabel:UILabel!
    
    var restaurantImage:String!
    var restaurantName : String!
    var restaurantType :String!
    var restaurantLocation: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.restaurantImageView.image=UIImage(named:restaurantImage)
        self.restaurantLocationLabel.text = restaurantLocation
        self.restaurantTypeLabel.text = restaurantType
        self.restaurantNameLabel.text = restaurantName
        
//        restaurantImageView.image = UIImage(named: imagePicked)
//        restaurantNameLabel.text = restaurantName
//        restaurantTypeLabel.text = restaurantType
//        restaurantLocationLabel.text=restaurantLocation
//        
        
              

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
