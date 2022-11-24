//
//  BottomView.swift
//  gesturedelegate
//
//  Created by Alina on 6.10.22.
//

import UIKit

class BottomView: UIView {

    weak var delegate: GestureDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(BottomView.didTap))
        self.addGestureRecognizer(recognizer)
    }
    
    @objc func didTap() {
       delegate?.didTap(self)
        
    }

}
