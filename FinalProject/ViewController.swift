//
//  ViewController.swift
//  FinalProject
//
//  Created by Jaleel Shavers on 4/2/18.
//  Copyright © 2018 Jaleel Shavers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let myRestaurantsArray = ["AGU Ramen", "Burger King", "KFC", "Pizza Hut", "Taco Bell", "L&L Hawaiian Barbecue"]
    
    @IBOutlet var tableView: UITableView!
    
    var restaurantImageData = [String]()
    var restaurantTextData = [String]()
    var restaurantTitleData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        self.title = "Foods"
        
        self.tableView.dataSource = self
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        restaurantTextData = dict!.object(forKey:"restaurantTexts") as! [String]
        restaurantTitleData = dict!.object(forKey:"restaurantTitles") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "My Favorite Restaurants"
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1;
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        
        return myRestaurantsArray.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myRestaurantsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            s1.textPass = restaurantTextData[imageIndex!]
            s1.titlePass = restaurantTitleData[imageIndex!]

        }
        
    }

}

