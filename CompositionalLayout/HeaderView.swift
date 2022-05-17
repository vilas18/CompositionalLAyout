//
//  CollectionReusableView.swift
//  CompositionalLayout
//
//  Created by datamatics on 02/05/22.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.text = ""
        
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    func configure(with title: String) {
        label.text = title
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
