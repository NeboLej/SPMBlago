//
//  File.swift
//  
//
//  Created by Nebo on 31.10.2023.
//

import UIKit
//import SDWebImage

public protocol HappyListenerProtocol {
    func didLoad()
    func onClickPay()
}

public class Happy {
    
    let listener: HappyListenerProtocol
    
    public init(listener: HappyListenerProtocol) {
        self.listener = listener
    }
    
    public func open() -> UIViewController {
        let ctrl = Controller()
        ctrl.listener = listener
        return ctrl
    }
}
