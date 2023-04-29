//
//  PhoneNumbReg.swift
//  C-chat
//
//  Created by Don Dominic on 21/03/23.
//

import UIKit

class PhoneNumbReg: UIViewController {

    @IBOutlet var phHeadLabel: UILabel!
    
    @IBOutlet weak var phSubHeadLbl: UILabel!
    
    @IBOutlet weak var phTxtFld: UITextField!
    
    @IBOutlet weak var CountryPicker: UIPickerView!
    
    @IBOutlet weak var signInLbl: UILabel!
    
    @IBOutlet weak var cntryCodeLbl: UILabel!
    
    var arr = ["US: +1","Canada: +1","Ind: +91","Egypt: +20","Niger: +234"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CountryPicker.delegate = self
    
        CountryPicker.dataSource = self
        
        cntryCodeLbl.text = arr[0]
        
        lableValues()

        // Do any additional setup after loading the view.
    }
    
    func lableValues(){
        
        phHeadLabel.text = Strings.str_phone_heading
        
        phSubHeadLbl.text = Strings.str_phone_subHeading
        
        signInLbl.text = Strings.str_SignIn_Screen_Text
        
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        
        if (phTxtFld.text) != "" {
            
            let viewcntrl = storyboard?.instantiateViewController(withIdentifier: "otpVC") as! OtpViewController
            
            navigationController?.pushViewController(viewcntrl, animated: true)
        }else{

            let alertDetails = UIAlertController(title: "For OTP", message: "Enter a valid phone number", preferredStyle: .alert)
            alertDetails.addAction(UIAlertAction(title: "Ok", style: .destructive))
            self.present(alertDetails, animated: true)
        }
        
    }
}
extension PhoneNumbReg: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        cntryCodeLbl.text = arr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return arr[row]
    }
}
