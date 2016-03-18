//
//  MasterViewController.swift
//  MicChec
//
//  Created by Scott McAlister on 3/18/16.
//  Copyright © 2016 Scott McAlister. All rights reserved.
//

import UIKit
import AVFoundation


class MasterViewController: UITableViewController {

    var objects = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        cell.textLabel!.text = objects[indexPath.row]
        return cell
    }


    @IBAction func insertReading() {
        let reading = AVAudioSession.sharedInstance().sessionText()
        objects.append(reading)
        self.tableView.reloadData()
    }
}

