//
//  UpcomingMoviesViewModel.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

protocol UpcomingMoviesViewModelProtocol: BaseViewModelProtocol {
   
   func fetchMovies()
   func fetchMoreMovies()
}

class UpcomingMoviesViewModel {
   
   private let paginationWorker: MoviesPaginationWorker

   init(paginationWorker: MoviesPaginationWorker) {
      self.paginationWorker = paginationWorker
   }
   
}

extension UpcomingMoviesViewModel: UpcomingMoviesViewModelProtocol {
   
   func fetchMovies() {
      paginationWorker.clear()
      paginationWorker.fetch()
   }
   
   func fetchMoreMovies() {
      paginationWorker.fetch()
   }
}
