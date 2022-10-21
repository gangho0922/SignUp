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
    @IBAction func idTextFieldTyped(_ sender: UITextField) {
           idTextFieldDescription.isHidden = false // label 보여주기
           
           let userWord = idTextField.text?.lowercased() // 소문자 변환
           idTextField.text = userWord // 변환된 소문자로 바꿔주기
           
           let minCount = 5
           let maxCount = 12
           let count = userWord!.count

           switch count {
           case 0:
               idTextFieldDescription.text = "아이디는 필수입력 정보입니다."
           case 1..<minCount:
               idTextFieldDescription.text = "아이디는 5글자 이상이어야 합니다."
           case minCount...maxCount:
               let idPattern = "^[a-z0-9-_]{\(minCount),\(maxCount)}$"
               let isVaildPattern = (userWord!.range(of: idPattern, options: .regularExpression) != nil)
               if isVaildPattern {
                   idTextFieldDescription.text = "조건에 맞는 아이디"
                   idTextFieldDescription.isHidden = true
               } else {
                   idTextFieldDescription.text = "소문자, 숫자, 빼기(-), 밑줄(_)만 사용할 수 있습니다."
               }
           default:
               idTextFieldDescription.text = "아이디는 12글자 이하이어야 합니다."
           }
    }

}

