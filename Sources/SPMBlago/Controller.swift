//
//  File.swift
//  
//
//  Created by Nebo on 31.10.2023.
//

import UIKit
import SDWebImage

class Controller: UIViewController {
    
    let imageView = SDAnimatedImageView()
    
    var listener: HappyListenerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listener?.didLoad()
        
        view.insertSubview(imageView, at: 0)
        imageView.frame = view.frame
        imageView.contentMode = .scaleAspectFit
        imageView.sd_setImage(with: URL(string: "https://i2-prod.mirror.co.uk/incoming/article7569057.ece/ALTERNATES/s1200d/successkid.jpg"), placeholderImage: UIImage(named: "placeholder.png"))
        
        view.backgroundColor = .red
    }
}
