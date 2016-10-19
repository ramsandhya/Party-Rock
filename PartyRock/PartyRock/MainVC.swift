//
//  ViewController.swift
//  PartyRock
//
//  Created by Jitendra Ram on 10/18/16.
//  Copyright © 2016 Sandhya Ram. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/TrVLu9p65a0/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=2ARp2af8fnesF5CPpl4AclLZKD4", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TrVLu9p65a0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where  The Sun Goespar")
        
        partyRocks.append(p1 )
        
            
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            print(cell)
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

