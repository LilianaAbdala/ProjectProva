//
//  RegisterViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreenView = RegisterScreenView()
    
    override func loadView() {
        view = registerScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
         gradientLayer.colors = [
             UIColor.systemPurple.cgColor,
             UIColor.systemBlue.cgColor,
             ]
        view.layer.addSublayer(gradientLayer)
        
        
        self.registerScreenView.buttonRegister.addTarget(self, action: #selector(validateField), for: .touchUpInside)
    }
    

    @objc func validateField() {
        if (self.registerScreenView.nameTextField.text?.isEmpty ?? false ||
            self.registerScreenView.mateTextField.text?.isEmpty ?? false) ||
            self.registerScreenView.note1TextField.text?.isEmpty ?? false {
            
            print("Preencha todos os campos")
        } else {
            registerNotes()
        }
    }
    
    func registerNotes() {
        let notes = Notes(
            name: registerScreenView.nameTextField.text,
            matter: registerScreenView.mateTextField.text,
            note1: registerScreenView.note1TextField.text,
            note2: registerScreenView.note2TextField.text,
            note3: registerScreenView.note3TextField.text,
            note4: registerScreenView.note4TextField.text)
        
        /*let homeViewController = HomeViewController()
        homeViewController.getNotes(notes: notes)
        self.navigationController?.pushViewController(homeViewController, animated: true)*/
    }
}
