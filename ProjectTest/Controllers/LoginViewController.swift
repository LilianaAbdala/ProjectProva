//
//  ViewController.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class LoginViewController: UIViewController {

    lazy var imageViewLogo: UIImageView = {
    let image  = UIImageView(frame:CGRect(x:100, y:50, width:200, height:300));
    image.image = UIImage(named:"chefe.png")
    image.contentMode = .scaleAspectFit
    return image
    }()
    
    lazy var buttonCadastro: UIButton = {
    let button = UIButton()
    button.setTitle("Cadastrar Receita", for: .normal)
    button.backgroundColor = .systemPurple
    button.setTitleColor(.white, for: .normal)
    button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
    button.layer.cornerRadius = 25
    button.addTarget(self, action: #selector(goRegister), for: .touchUpInside)
    return button
    }()
    
    lazy var buttonReceitas: UIButton = {
    let button = UIButton()
    button.setTitle("Ver Receitas", for: .normal)
    button.backgroundColor = .systemPurple
    button.setTitleColor(.white, for: .normal)
    button.frame = CGRect(x: 100, y: 670, width: 200, height: 50)
    button.layer.cornerRadius = 25
    button.addTarget(self, action: #selector(goHome), for: .touchUpInside)
    return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(imageViewLogo)
        view.addSubview(buttonCadastro)
        view.addSubview(buttonReceitas)

    }
    @objc private func goHome(){
        let rootVC = HomeViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
    @objc private func goRegister(){
        let rootVC = RegisterViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
}

