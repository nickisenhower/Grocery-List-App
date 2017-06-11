//
//  ViewController.swift
//  Groceries
//
//  Created by Nicholas Isenhower on 06/10/17.
//  Copyright © 2017 Nicholas Isenhower. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let GroceryList = ["apple", "orange", "watermelon"]
   public  func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBOutlet var myTableView: UITableView!
    
    //making table view:
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return GroceryList.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let myCell: UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "prototype1", for: indexPath)
        
        myCell.textLabel?.text = GroceryList[indexPath.row]
        myCell.imageView?.image = UIImage(named: GroceryList[indexPath.row])
        
        return myCell
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

