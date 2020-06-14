//
//  ViewController.swift
//  Video-App
//
//  Created by Kaiserdem on 14.06.2020.
//  Copyright © 2020 Kaiserdem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var model = Model()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    model.getVideos()
  }


}

