//
//  ViewController.swift
//  Challenge1
//
//  Created by GSW Mobile Team on 23/08/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let cellReuseIdentifier = "Flag"
    let detailViewControllerIdentifier = "Flag Detail"
    
    var flags: [Flag] = []
    
    //MARK: - View LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country Flags"
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Table Data
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        let flag = flags[indexPath.row]
        
        cell?.imageView?.image = UIImage(named: flag.assetName)
        cell?.textLabel?.text = flag.displayName
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: detailViewControllerIdentifier)
    }


    
    // Helper Functions
    func getFlags() {
        
    }
}

