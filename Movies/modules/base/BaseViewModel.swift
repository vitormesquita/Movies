//
//  BaseViewModel.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

protocol BaseViewModelProtocol {
   
}

class BaseViewModel: BaseViewModelProtocol {

   deinit {
      print("dealloc ---> \(String(describing: type(of: self)))")
   }
}
