//
//  PlayersViewController.swift
//  Ratings
//
//  Created by tony on 2017/3/22.
//  Copyright © 2017年 tony. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {

    var players:[Player] = playersData
    
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
        return self.players.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
            as! PlayerCell
        
        let player = self.players[indexPath.row] as Player
        cell.player = player
        return cell
    }
    
    @IBAction func cancelToPlayersViewController(_ segue:UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(_ segue:UIStoryboardSegue) {
        if let playerDetailsViewController = segue.source as? PlayerDetailsViewController {
            if let player = playerDetailsViewController.player {
                players.append(player)
                
                let indexPath = IndexPath(row: players.count - 1, section: 0)
                tableView.insertRows(at: [indexPath], with: .automatic)
            }
        }
    }
}
