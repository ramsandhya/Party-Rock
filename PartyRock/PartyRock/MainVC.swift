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
        
        
       let p1 = PartyRock(imageURL: "https://img.digitaldjpool.com/im/4/4/f/d/e/8/44fde8a5-a55a-49a5-8d3f-60ccb0377fcb.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TrVLu9p65a0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where  The Sun Goes")
        
        let p2 = PartyRock(imageURL: "http://www.clubstarters.net/image/cache/data/artist/221724865_Unknown-500x500.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        
        let p3 = PartyRock(imageURL: "http://www.josepvinaixa.com/blog/wp-content/uploads/2015/01/Redfoo-Juicy-Wiggle-2015-1200x1200.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        
        partyRocks.append(p1 )
        partyRocks.append(p2 )
        partyRocks.append(p3 )
        
            
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

