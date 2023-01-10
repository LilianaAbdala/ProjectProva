//
//  RegisterViewController.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    func result () {
    
    lazy var resultLabel: UILabel = {
        let lblR = UILabel(frame: CGRect(x: 40, y: 650, width: 300, height: 40))
        lblR.textAlignment = .center
        lblR.text = "Prencha todos os campos"
        lblR.textColor = .black
        lblR.font = UIFont.systemFont(ofSize: 18)
        return lblR
    }()
        view.addSubview(resultLabel)
}

        func validar() {
            if nameTextField.text == "" || ingreTextField.text == "" || PrepaTextField.text == "" { print("Preencha os campos")
                result()
                
            }else {
                let rootVC = LoginViewController()
                let navVC = UINavigationController(rootViewController: rootVC)
                present(navVC, animated: true)
            }
        }
    
    lazy var labelName: UILabel = {
        let lblN = UILabel(frame: CGRect(x: 30, y: 80, width: 300, height: 40))
        lblN.textAlignment = .center
        lblN.text = "Nome da Receita"
        lblN.textColor = .black
        lblN.font = UIFont.systemFont(ofSize: 18)
        return lblN
    }()
    
    lazy var nameTextField: UITextField = {
        let name = UITextField()
        name.placeholder = " Qual o nome da receita?"
        name.frame = CGRect(x: 50, y: 130, width: 300, height: 50)
        name.backgroundColor = .white
        name.layer.cornerRadius = 10
        name.layer.borderWidth = 2
        name.layer.borderColor = UIColor.white.cgColor
        return name
        }()
    
    lazy var labelIngre: UILabel = {
        let lblI = UILabel(frame: CGRect(x: 30, y: 200, width: 300, height: 40))
        lblI.textAlignment = .center
        lblI.text = "Ingredientes"
        lblI.textColor = .black
        lblI.font = UIFont.systemFont(ofSize: 18)
        return lblI
    }()
    
    lazy var ingreTextField: UITextField = {
        let ingre = UITextField()
        ingre.frame = CGRect(x: 50, y: 250, width: 300, height: 80)
        ingre.placeholder = " Escreva aqui os ingredientes"
        ingre.backgroundColor = .white
        ingre.layer.cornerRadius = 10
        ingre.layer.borderWidth = 2
        ingre.layer.borderColor = UIColor.white.cgColor
        return ingre
        }()
    
    lazy var labelPreparo: UILabel = {
        let lblP = UILabel(frame: CGRect(x: 30, y: 350, width: 300, height: 40))
        lblP.textAlignment = .center
        lblP.text = "Modo de Preparo"
        lblP.textColor = .black
        lblP.font = UIFont.systemFont(ofSize: 18)
        return lblP
    }()
    
    lazy var PrepaTextField: UITextField = {
        let prepa = UITextField()
        prepa.frame = CGRect(x: 50, y: 400, width: 300, height: 120)
        prepa.placeholder = " Qual o modo de preparo?"
        prepa.backgroundColor = .white
        prepa.layer.cornerRadius = 10
        prepa.layer.borderWidth = 2
        prepa.layer.borderColor = UIColor.white.cgColor
        return prepa
        }()
    
    lazy var buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.backgroundColor = .systemPurple
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 600, width: 200, height: 50)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(goLogin), for: .touchUpInside)
        return button
    }()
    
    func buttonRegister(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "Nome")
        UserDefaults.standard.set(ingreTextField.text, forKey: "Ingredientes")
        UserDefaults.standard.set(PrepaTextField.text, forKey: "Preparo")
        
    }
    
    func retriveDetails(){
        let nome = UserDefaults.standard.string(forKey: "Nome")
        let ingre = UserDefaults.standard.string(forKey: "Ingredientes")
        let prepa = UserDefaults.standard.string(forKey: "Preparo")
        
        print("Nome da Receita: \(nome), Ingredientes: \(ingre), Modo de preparo: \(prepa)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        retriveDetails()
            
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPurple.cgColor,
            UIColor.systemBlue.cgColor,
            ]
        view.layer.addSublayer(gradientLayer)
        
        view.addSubview(labelName)
        view.addSubview(nameTextField)
        view.addSubview(labelIngre)
        view.addSubview(ingreTextField)
        view.addSubview(labelPreparo)
        view.addSubview(PrepaTextField)
        view.addSubview(buttonRegister)
    
    }
    @objc private func goLogin(){
        validar()
    }
}
