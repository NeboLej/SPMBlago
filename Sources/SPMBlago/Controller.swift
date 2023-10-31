//
//  File.swift
//  
//
//  Created by Nebo on 31.10.2023.
//

import UIKit

class Controller: UIViewController {
    
    var listener: HappyListenerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listener?.didLoad()
        
        view.backgroundColor = .red
    }
}
