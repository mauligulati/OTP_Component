//
//  ViewController.swift
//  OTP_Component
//
//  Created by Mauli Gulati on 21/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var otpContainerView: UIView!
    
    let otpStackView = OTPStackView()
    let userEnteredOTP = "000000"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otpContainerView.addSubview(otpStackView)
        otpStackView.delegate = self
    }
}

extension ViewController: OTPDelegate {
    
    func didChangeValidity(isValid: Bool) {
        if isValid {
            if userEnteredOTP == otpStackView.getOTP() {
                otpStackView.setAllFieldColor(isWarningColor: true, color: .green)
            } else {
                otpStackView.setAllFieldColor(isWarningColor: true, color: .red)
            }
        }
    }
    
}

