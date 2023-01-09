//
//  BaseCell.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class BaseCell:UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        // do nothing
    }
    
    func addConstraints() {
        // do nothing
    }
    
}
