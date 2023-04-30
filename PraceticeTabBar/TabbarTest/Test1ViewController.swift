//
//  Test1ViewController.swift
//  PraceticeTabBar
//
//  Created by ukBook on 2023/04/29.
//

import UIKit
import SnapKit
import Then


final class Test1ViewController: UIViewController{
    
    lazy var centerLabel = UILabel().then {
        $0.text = "Test1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUI()
        setAttribute()
    }

    func setUI() {
        
        self.view.backgroundColor = .red
        self.view.addSubview(centerLabel)
    }
    
    func setAttribute() {
        
        centerLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
