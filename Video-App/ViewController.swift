//
//  ViewController.swift
//  Video-App
//
//  Created by Kaiserdem on 14.06.2020.
//  Copyright © 2020 Kaiserdem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ModelDelegate {

  @IBOutlet weak var tableView: UITableView!
  
  var videos = [Video]()
  var model = Model()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    model.delegate = self

    tableView.delegate = self
    tableView.dataSource = self
    model.getVideos()
  }
  
  // MARK: - Model Delegate Methods

  func videosFetched(_ videos: [Video]) {
    
    self.videos = videos

    DispatchQueue.main.async {
      self.tableView.reloadData()
    }
   }

// MARK: - Delegate and DataSource
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return videos.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
    
    let title = self.videos[indexPath.row].title
    cell.textLabel?.text = title
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
}

