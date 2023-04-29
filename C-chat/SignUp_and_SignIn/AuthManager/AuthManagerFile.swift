//
//  AuthManagerFile.swift
//  C-chat
//
//  Created by Don Dominic on 23/03/23.
//

import Foundation
import FirebaseAuth

class AuthManagerFile{
    private let auth = Auth.auth()
    
    private var verificationId: String?
    
    public func startAuth(phoneNumber: String,completion: @escaping (Bool) -> Void){
        
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil){ [weak self] verificationId, error in
            
            guard let verificationId = verificationId, error == nil else{
                
                completion(false)
                
                return
            }
            self?.verificationId = verificationId
            
            completion(true)
        }
    }
    public func verification(smsVer: String,completion: @escaping (Bool) -> Void){
        guard let verificationId = verificationId else{
            completion(false)
            return
        }
        let credentials = PhoneAuthProvider.provider().credential(withVerificationID: verificationId, verificationCode: smsVer)
        
        auth.signIn(with: credentials) { result, error in
            guard result != nil, error == nil else{
                completion(false)
                return
            }
            completion(true)
        }
    }
}
