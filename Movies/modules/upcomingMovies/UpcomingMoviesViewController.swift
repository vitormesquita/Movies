//
//  UpcomingMoviesViewController.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

class UpcomingMoviesViewController: BaseViewController {
   
   private var viewModel: UpcomingMoviesViewModelProtocol {
      return baseViewModel as! UpcomingMoviesViewModelProtocol
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }
}
