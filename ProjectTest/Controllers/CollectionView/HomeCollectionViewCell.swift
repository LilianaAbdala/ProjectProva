//
//  BookingCollectionViewCell.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 13/01/23.
//

import UIKit

class BookingCollectionViewCell: BaseCell {
    
    var receita: Receita? {
        didSet {
            nome.text = receita?.nome
            ingre.text = receita?.ingre
            prepa.text = receita?.prepa
        }
    }
    
    lazy var nome: UILabel = {
        let label = UILabel()
        label.text = "Nome da receita"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()

    lazy var ingre: UILabel = {
        let label = UILabel()
        label.text = "Ingredientes da receita"
        return label
    }()
    
    lazy var prepa: UILabel = {
        let label = UILabel()
        label.text = "Modo de preparo da receita"
        return label
    }()
    
    override func addSubviews() {
        
        addSubview(nome)
        addSubview(ingre)
        addSubview(prepa)
    }
    
    override func setConstraints() {
        
        nome.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 100, left: 16, bottom: 0, right: 0), size: .init(width: 200, height: 40))
        
        ingre.anchor(top: nome.bottomAnchor, leading: nome.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        prepa.anchor(top: ingre.bottomAnchor, leading: ingre.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
    }
}

