//
//  ViewController.swift
//  HostingControllerTry
//
//  Created by admin on 30/4/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
  
  fileprivate let contentViewInHC = UIHostingController(rootView: CView())

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setUpHC()
    
    setUpConstraints()

  }
  
  func setUpConstraints() {
    
    contentViewInHC.view.translatesAutoresizingMaskIntoConstraints = false
    contentViewInHC.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    contentViewInHC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    contentViewInHC.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    contentViewInHC.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    
    contentViewInHC.view.frame = .init(x: 100, y: 100, width: 100, height: 100)
    contentViewInHC.view.layer.masksToBounds = true
  }
  
  func setUpHC() {
    print("setting...")
    addChild(contentViewInHC)
    view.addSubview(contentViewInHC.view)
    contentViewInHC.didMove(toParent: self)
  }
  



}

