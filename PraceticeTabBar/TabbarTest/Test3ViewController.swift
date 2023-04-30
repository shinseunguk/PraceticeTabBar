//
//  Test3ViewController.swift
//  PraceticeTabBar
//
//  Created by ukBook on 2023/04/29.
//

import UIKit
import SnapKit
import Then


final class Test3ViewController: UIViewController{
    
    lazy var centerLabel = UILabel().then {
        $0.text = "Test3"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUI()
        setAttribute()
    }

    func setUI() {
        
        self.view.backgroundColor = .yellow
        self.view.addSubview(centerLabel)
    }
    
    func setAttribute() {
        
        centerLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
