//
//  Test2ViewController.swift
//  PraceticeTabBar
//
//  Created by ukBook on 2023/04/29.
//

import UIKit
import SnapKit
import Then


final class Test2ViewController: UIViewController{
    
    lazy var centerLabel = UILabel().then {
        $0.text = "Test2"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUI()
        setAttribute()
    }

    func setUI() {
        
        self.view.backgroundColor = .orange
        self.view.addSubview(centerLabel)
    }
    
    func setAttribute() {
        
        centerLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
