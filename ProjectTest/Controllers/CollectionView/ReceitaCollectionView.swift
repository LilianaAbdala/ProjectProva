//
//  ReceitasCollectionView.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//


import UIKit

class ReceitaCollectionViewCell: BaseCell {
    
    var receita: Receita? {
        
        didSet {
            
            lblName.text = receita?.name
            lblDesc.text = receita?.desc
            imageView.image = UIImage(named: receita?.image ?? "")
            
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPurple
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }() //funcionalidade, precisa do construtor.
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var lblDesc: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.backgroundColor = .black
        return label
    }()
    
    override func addSubviews() {
        addSubview(container)
        container.addSubview(imageView)
        container.addSubview(lblName)
        container.addSubview(lblDesc)
    }
    
    override func addConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10), size: .init(width: frame.width, height: 190))
        
        imageView.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 10, bottom: 10, right: 0), size: .init(width: 70, height: 70))
        
        lblName.anchor(top: imageView.topAnchor, leading: imageView.trailingAnchor, bottom: lblDesc.topAnchor, trailing: nil, padding: .init(top: 20, left: 8, bottom: 0, right: 0), size: .init(width: 200, height: 30))
        
        lblDesc.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 270, height: 80))
    }
}
