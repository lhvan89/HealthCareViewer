//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by Le Hong Van on 11/5/18.
//  Copyright © 2018 Le Hong Van. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    let logoImageView = UIImageView()
    let patientLabel = UILabel()
    let patientCodeTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    func initUI() {
        
        view.backgroundColor = .white
        
        // MARK: logoImageView
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { [weak self] (maker) in
            guard let strongSelf = self else { return }
            maker.top.equalTo(strongSelf.view).offset(78)
            maker.centerX.equalTo(strongSelf.view)
        }
        logoImageView.image = UIImage(named: "logo-blue")
        
        // MARK: patientLabel
        view.addSubview(patientLabel)
        patientLabel.snp.makeConstraints { [weak self] (maker) in
            guard let strongSelf = self else { return }
            maker.top.equalTo(strongSelf.logoImageView.snp.bottom).offset(68)
            maker.left.equalTo(strongSelf.view).offset(42)
            maker.right.equalTo(strongSelf.view).offset(-42)
        }
        patientLabel.text = "Mã số bệnh nhân / bác sĩ"
        patientLabel.textColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
        // MARK: patientCodeTextField
        view.addSubview(patientCodeTextField)
        patientCodeTextField.snp.makeConstraints { [weak self] (maker) in
            guard let strongSelf = self else { return }
            maker.top.equalTo(strongSelf.patientLabel.snp.bottom).offset(20)
            maker.height.equalTo(24)
            maker.left.right.equalTo(strongSelf.patientLabel)
        }
        patientCodeTextField.placeholder = "Nhập mã số"
    }
}
