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
            
            labelName.text = receita?.nome
            labelIngre.text = receita?.ingre
            labelPreparo.text = receita?.prepa
            imageView.image = UIImage(named: receita?.image ?? "ok")
            
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPurple
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.white.cgColor
        return view
    }() //funcionalidade, precisa do construtor.
    
    lazy var labelName: UILabel = {
        let label = UILabel()
        label.text = "Nome da Receita"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var labelIngre: UILabel = {
        let label = UILabel()
        label.text = "Ingredientes"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        //label.backgroundColor = .black
        return label
    }()
    
    lazy var labelPreparo: UILabel = {
        let label = UILabel()
        label.text = "Modo de Preparo"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
       // label.backgroundColor = .black
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    override func addSubviews() {
        addSubview(container)
        container.addSubview(labelName)
        container.addSubview(labelIngre)
        container.addSubview(labelPreparo)
        container.addSubview(imageView)
    }
    
    override func addConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10), size: .init(width: frame.width, height: 190))
        
        imageView.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 10, bottom: 10, right: 0), size: .init(width: 70, height: 70))
        
        labelName.anchor(top: imageView.topAnchor, leading: imageView.trailingAnchor, bottom: labelIngre.topAnchor, trailing: nil, padding: .init(top: 20, left: 8, bottom: 0, right: 0), size: .init(width: 200, height: 30))
        
        labelIngre.anchor(top: labelName.bottomAnchor, leading: labelName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 270, height: 80))
        
        labelPreparo.anchor(top: labelIngre.bottomAnchor, leading: labelIngre.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 80))
    }
}
