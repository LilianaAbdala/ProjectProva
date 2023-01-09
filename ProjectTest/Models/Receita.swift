//
//  Receitas.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

class Receita: NSObject {
    
    var id: Int?  // : atribui o tipo, = atribui o tipo e recebe valor.
    var name: String?
    var desc: String?
    var image: String?
    
    init (id: Int?, name: String?, desc: String?, image: String?) {
        self.id = id // especifica e fala que ta fora.
        self.name = name
        self.desc = desc
        self.image = image
        
    }
}
