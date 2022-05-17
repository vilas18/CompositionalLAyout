//
//  CollectionViewCell.swift
//  CompositionalLayout
//
//  Created by datamatics on 02/05/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "cell"
    
    let imageView = UIImageView()
      
      override init(frame: CGRect) {
          
          super.init(frame: frame)
          
          imageView.layer.cornerRadius = 10
          imageView.layer.masksToBounds = true
      }

      required init?(coder: NSCoder) {
          
          fatalError("init(coder:) has not been implemented")
      }
      
      func configure(withImage image: UIImage) {
          
          imageView.translatesAutoresizingMaskIntoConstraints = false

          contentView.addSubview(imageView)
          
          NSLayoutConstraint.activate([
              imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
              imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
              imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
              imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
          ])

          imageView.image = image
      }
  }



