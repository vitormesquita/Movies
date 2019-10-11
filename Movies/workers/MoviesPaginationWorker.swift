//
//  MoviesPaginationWorker.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

enum MoviePeriod {
   case upcoming
}

protocol MoviesPaginationWorker {
   
   var loadedMovies: [Any] { get }
   
   func clear()
   func fetch()
}

class MoviesPaginationWorkerImpl {
   
   private var page: Int = 0
   private let period: MoviePeriod
   
   var loadedMovies: [Any] = []
   
   init(period: MoviePeriod) {
      self.period = period
   }
}

extension MoviesPaginationWorkerImpl: MoviesPaginationWorker {
   
   func clear() {
      page = 1
      loadedMovies = []
   }
   
   func fetch() {
      page += 1
   }
}
