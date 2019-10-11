//
//  MovieRoutes.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import Moya

enum MovieRoutes {
   
   enum Target: APITargetProtocol {
      case upcoming(page: Int)
      
      var path: String {
         switch self {
         case .upcoming:
            return ""
         }
      }
      
      var method: Method {
         switch self {
         case .upcoming:
            return .get
         }
      }
      
      var task: Task {
         switch self {
         case let .upcoming(page):
            let params: [String: Any] = [
               "page": page,
               "api_key": "c5850ed73901b8d268d0898a8a9d8bff"
            ]
            
            return .requestParameters(parameters: params, encoding: URLEncoding())
            
         }
      }
   }
}
