//
//  ViewController.swift
//  emoji dictionary
//
//  Created by Glenn iMac on 5/29/17.
//  Copyright © 2017 Glenn Schreiber. All rights reserved.
//

import UIKit


    
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacoolTableView: UITableView!
    
    var emojis = ["😄", "🤡", "🤠", "😇", "😳", "😇", "💂🏼‍♀️"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    dacoolTableView.dataSource = self
    dacoolTableView.delegate = self
        
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

