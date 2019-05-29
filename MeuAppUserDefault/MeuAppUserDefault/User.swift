//
//  User.swift
//  MeuAppUserDefault
//
//  Created by Wanderley Marcussi on 29/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Usar {
    
    

    
    static func SalvarObjetoTexto (chave: String, valor: String) {
            UserDefaults.standard.set(valor, forKey: chave)

    }

    static func pegarObjetoTexto(chave: String) -> String? {
        
        let valor =  UserDefaults.standard.string(forKey: chave)
        return valor
    }

    

    
    
}
