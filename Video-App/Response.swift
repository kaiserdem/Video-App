//
//  Response.swift
//  Video-App
//
//  Created by Kaiserdem on 14.06.2020.
//  Copyright © 2020 Kaiserdem. All rights reserved.
//

import Foundation

struct Response: Decodable {
  
  var items: [Video]?
  
  enum CodingKeys: String, CodingKey {
    case items
  }
  init(from decoder: Decoder) throws {
    
    let conteiner = try decoder.container(keyedBy: CodingKeys.self)
    
    self.items = try  conteiner.decode([Video].self, forKey: .items)
  }
}
