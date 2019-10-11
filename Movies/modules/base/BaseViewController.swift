//
//  BaseViewController.swift
//  Movies
//
//  Created by Vitor Mesquita on 11/10/19.
//  Copyright © 2019 Vitor Mesquita. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
   
   var baseViewModel: BaseViewModelProtocol!
   
   public init(viewModel: BaseViewModelProtocol) {
      self.baseViewModel = viewModel
      super.init(nibName: nil, bundle: nil)
      modalPresentationStyle = .fullScreen
   }
   
   public init(viewModel: BaseViewModelProtocol, type: UIViewController.Type) {
      self.baseViewModel = viewModel
      super.init(nibName: String(describing: type), bundle: Bundle(for: type))
      modalPresentationStyle = .fullScreen
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = UIColor(named: "background")
   }
   
   deinit {
      print("dealloc ---> \(String(describing: type(of: self)))")
   }
}
