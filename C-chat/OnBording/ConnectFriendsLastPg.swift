//
//  ConnectFriendsLastPg.swift
//  C-chat
//
//  Created by Don Dominic on 21/03/23.
//

import UIKit

class ConnectFriendsLastPg: UIViewController {
    
    @IBOutlet weak var firstImg: UIImageView!
    
    @IBOutlet weak var secondImg: UIImageView!
    
    @IBOutlet weak var thirdImg: UIImageView!
    
    @IBOutlet weak var forthImg: UIImageView!
    
    @IBOutlet weak var fifthImg: UIImageView!
    
    @IBOutlet weak var titleLstPg: UILabel!
    
    @IBOutlet weak var signinLabel: UILabel!
    
    @IBOutlet weak var subTitleLstPg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cornerRadious()
        
        labelHolder()
        // Do any additional setup after loading the view.
    }
    
    func cornerRadious(){
        
        thirdImg.layer.cornerRadius = 120

        firstImg.layer.cornerRadius = 25

        secondImg.layer.cornerRadius = 15

        forthImg.layer.cornerRadius = 20

        fifthImg.layer.cornerRadius = 30
        
    }
    func labelHolder(){
        signinLabel.text = Strings.str_SignIn_Screen_Text
        
        titleLstPg.text = Strings.str_titleThirdPage
        
        subTitleLstPg.text = Strings.str_sub_titleThirdPage
    }
    
}
