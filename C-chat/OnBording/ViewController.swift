//
//  ViewController.swift
//  C-chat
//
//  Created by Don Dominic on 20/03/23.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var welcome_Label: UILabel!
    
    @IBOutlet weak var secLabel: UILabel!
    
    @IBOutlet weak var signIn: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        setDetails()
        
    }
    
    @IBAction func SubButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ConnectFriends") as! connectWithFriends
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    func setDetails(){
        
        profileImage.layer.cornerRadius = 120
        
        profileImage.backgroundColor = .lightGray
        
        welcome_Label.text = Strings.str_First_Screen_Text_Heading
        
        welcome_Label.textColor = .black
        
        secLabel.text = Strings.str_First_Screen_Text
        
        signIn.text = Strings.str_SignIn_Screen_Text
        
        signIn.textColor = .gray
    }
    
    
}

