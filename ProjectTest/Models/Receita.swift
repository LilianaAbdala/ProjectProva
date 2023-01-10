//
//  Receitas.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class Receita: NSObject {
    
    var id: Int?  // : atribui o tipo, = atribui o tipo e recebe valor.
    var nome: String?
    var ingre: String?
    var prepa: String?
    var image: String?
    
    init (id: Int?, nome: String?, ingre: String?, prepa: String?, image: String?) {
        self.id = id // especifica e fala que ta fora.
        self.nome = nome
        self.ingre = ingre
        self.prepa = prepa
        self.image = image
        
    }
}
