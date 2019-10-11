//
//  APIProvider.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import Moya

protocol APITargetProtocol: TargetType {
   func buildEndpoint() -> Endpoint
}

extension APITargetProtocol {

   var baseURL: URL {
      return URL(string: "")!
   }
   
   var task: Task {
      return .requestPlain
   }
   
   var sampleData: Data {
      return Data()
   }
   
   var headers: [String: String]? {
      return nil
   }
   
   func buildEndpoint() -> Endpoint {
      return Endpoint(url: "\(self.baseURL)\(self.path)",
         sampleResponseClosure: { .networkResponse(200, self.sampleData)},
         method: self.method,
         task: self.task,
         httpHeaderFields: self.headers)
   }
}

struct APIProvider<T: APITargetProtocol> {
   
   private func pluigins() -> [PluginType] {
      return [
         NetworkLoggerPlugin(verbose: true)
      ]
   }
   
   private func request(endpoint: Endpoint, result: MoyaProvider<T>.RequestResultClosure) {
      var request = try! endpoint.urlRequest()
      request.cachePolicy = .reloadIgnoringLocalCacheData
      result(.success(request))
   }
   
   func build() -> MoyaProvider<T> {
      return MoyaProvider<T>(endpointClosure: { $0.buildEndpoint() },
                             requestClosure: { endpoint, result  in self.request(endpoint: endpoint, result: result) },
                             plugins: pluigins())
   }
}
