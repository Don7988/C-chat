//
//  connectWithFriends.swift
//  C-chat
//
//  Created by Don Dominic on 21/03/23.
//

import UIKit

class connectWithFriends: UIViewController {

    @IBOutlet weak var imageSecPg: UIImageView!
    
    @IBOutlet weak var fstImg: UIImageView!
    
    @IBOutlet weak var sndImg: UIImageView!

    @IBOutlet weak var thrImg: UIImageView!

    @IBOutlet weak var forImg: UIImageView!
    
    @IBOutlet weak var secPgTitle: UILabel!
    
    @IBOutlet weak var secPgSubTitle: UILabel!
    
    @IBOutlet weak var signInLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerRadious()
        
        labelsSetup()
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    func cornerRadious(){
        
        imageSecPg.layer.cornerRadius = 120

        fstImg.layer.cornerRadius = 25

        sndImg.layer.cornerRadius = 15

        thrImg.layer.cornerRadius = 20

        forImg.layer.cornerRadius = 30
        
    }
    
    func labelsSetup(){

        signInLabel.text = Strings.str_SignIn_Screen_Text

        secPgTitle.text = Strings.str_secPg_Title_txt

        secPgSubTitle.text = Strings.str_secPg_Sub_Title_txt
    }
    
    @IBAction func nxtBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ConnectFriendsLast") as! ConnectFriendsLastPg
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func skipBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PhoneNumbReg1")as! PhoneNumbReg
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signinBtn(_ sender: Any) {
    }
}
