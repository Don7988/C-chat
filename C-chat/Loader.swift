//
//  Loader.swift
//  C-chat
//
//  Created by Don Dominic on 22/03/23.
//

import UIKit

class CRLoader: UIView {

    @IBOutlet weak var indicatorLoader: UIActivityIndicatorView!
   
    static let activeIndicatorView = CRLoader.loadViewFromNib()
    

    class func loadViewFromNib() -> CRLoader
    {
        let activityIndicatorView: CRLoader = Bundle.main.loadNibNamed("CRLoader", owner: self, options: nil)?.first as! CRLoader
        
        return activityIndicatorView
    }
    
    class func hide()
    {
        UIView.animate(withDuration: 0.35, animations:
            {
                
        }) { (true) in
        }
    }
    
   private func showActivityScreen()
    {
        UIView.animate(withDuration: 0.35, animations:
        {
            self.alpha = 1
            
        }) { (true) in
            
        }
    }
}
