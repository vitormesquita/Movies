//
//  MovieFactory.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

enum MovieFactory {

   static func upcoming() -> UIViewController {
      let viewModel = UpcomingMoviesViewModel()
      let viewController = UpcomingMoviesViewController(viewModel: viewModel)
      return UINavigationController(rootViewController: viewController)
   }
}
