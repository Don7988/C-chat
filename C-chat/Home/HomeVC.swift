//
//  HomeVC.swift
//  C-chat
//
//  Created by Don Dominic on 23/03/23.
//

import UIKit

class HomeVC: UIViewController{
    
    let nameInList = "johnson"
    
    let topImage: UIImageView = {
        
        let titleImage = UIImageView(image: UIImage(named: "1"))
        
        return titleImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(topImage)
        
        topImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
