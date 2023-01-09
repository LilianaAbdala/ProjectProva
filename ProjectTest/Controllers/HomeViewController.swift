//
//  HomeViewController.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var navigationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Navigation", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
        button.addTarget(self, action: #selector(goBooking), for: .touchUpInside)
        return button
    }()
    
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        return collectionView
    }()
    
    private let cellId = "cellId"
    var receitas: [Receita]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ReceitaCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        view.addSubview(collectionView)
        
        receitas { resposta in
            self.receitas = resposta
        }
        
    }
    
    @objc func goBooking() {
        let BookingViewController = BookingViewController()
        
    // self.navigationController?.pushViewController(bookingViewController, animated: true)
    }
    // ? opcional, pode receber valor ou nao, ! obrigatorio receber valor.
    
   func receitas(completion: @escaping([Receita]) -> ()) { // -> () indica que tem que inicializar.
        completion([
            Receita(id: 1, name: "", desc: "", image: ""),
            Receita(id: 2, name: "", desc: "", image: ""),
            Receita(id: 3, name: "", desc: "", image: ""),
            Receita(id: 4, name: "", desc: "", image: ""),
            Receita(id: 5, name: "", desc: "", image: ""),
            Receita(id: 6, name: "", desc: "", image: ""),
            Receita(id: 7, name: "", desc: "", image: ""),
            Receita(id: 8, name: "", desc: "", image: ""),
            
        ])
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = receitas?.count {
            return count
        }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ReceitaCollectionViewCell
        
        if let items = receitas?[indexPath.item] {
            cell.receita = items
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width - 20, height: 80)
    }
        // if indexPath.row == 0 {
        //print("Funciona")
    }

