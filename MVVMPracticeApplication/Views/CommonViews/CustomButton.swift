//
//  CustomButton.swift
//  MVVMPracticeApplication
//
//  Created by Renu Devi on 25/11/19.
//  Copyright © 2019 Renu Devi. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func customInit() {
                    NotificationCenter.default.addObserver(
                        self,
                        selector: #selector(preferredContentSizeChanged),
        
                        name: UIContentSizeCategory.didChangeNotification,
                        object: nil
                    )
    }
    
    @objc func preferredContentSizeChanged() {
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIContentSizeCategory.didChangeNotification, object: nil)
    }
}
