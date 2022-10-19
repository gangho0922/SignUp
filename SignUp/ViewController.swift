//
//  ViewController.swift
//  SignUp
//
//  Created by AnnKangHo on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextFieldDescription: UILabel!
    
    @IBOutlet var defaultHiddenCollection: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for label in defaultHiddenCollection {
            label.isHidden = true
        }
    }
    @IBAction func IdTextFieldTyped(_ sender: UITextField) {
        idTextFieldDescription.text = "아이디는 필수입력 정보입니다."
        idTextFieldDescription.isHidden =  false
    }


}

