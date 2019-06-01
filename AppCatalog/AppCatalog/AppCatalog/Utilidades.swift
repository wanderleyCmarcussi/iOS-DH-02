//
//  Utilidades.swift
//  AppCatalog
//
//  Created by Wanderley Marcussi on 01/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

enum Categoria: String {
    //Education, Games, Business, Finance, LifeStyle, Music
    case E = "Educação"
    case J = "Jogos"
    case N = "Negócios"
    case F = "Financeiro"
    case V = "Estilo de Vida"
    case M = "Música"
}

enum Plataforma: String {
    case I = "iOS"
    case A = "Android"
    case B = "Ambos"
}

class Aplicativo: Codable {
    var nome: String
    var preco: Float
    var categoria: String
    var desenvolvedor: String
    var plataforma: String
    
    init( nome: String, preco: Float, categoria: Categoria, desenvolvedor: String, plataforma: Plataforma){
        self.nome = nome
        self.preco = preco
        self.categoria = categoria.rawValue
        self.desenvolvedor = desenvolvedor
        self.plataforma = plataforma.rawValue
    }
}


