//
//  CommonTableViewCell.swift
//  MVVMPracticeApplication
//
//  Created by Renu Devi on 21/11/19.
//  Copyright © 2019 Renu Devi. All rights reserved.
//

import UIKit

class CommonTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = 8.0
        }
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    static let reusableIdentifier: String = "CommonTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    //    self.selectionStyle = .none
    }


}
