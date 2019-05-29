//
//  MinhaHomeVc.swift
//  MeuAppUserDefault
//
//  Created by Wanderley Marcussi on 29/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class MinhaHomeVc: UIViewController {

    @IBOutlet weak var escolheCorSegmento: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    
    @IBAction func clicarSelecionarCor(_ sender: UISegmentedControl) {
        
        let corSelecionada: String = String(sender.selectedSegmentIndex)
        
    
        Usar.SalvarObjetoTexto(chave: "CorSelecionada", valor: corSelecionada)
        
        self.checkCorSelecionada()
        
        //self.escolheCorSegmento.
        
    
        
        
        
    }
    
    @IBAction func Voltar(_ sender: Any) {
        
        self.dismiss(animated: true,  completion: nil)
    }
    
    
    
    //verde, amarelo, azul e branco
    
    func checkCorSelecionada() {
        
        switch self.escolheCorSegmento.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = .green
            break
        case 1:
            self.view.backgroundColor = .yellow
            break
        case 2:
            self.view.backgroundColor = .blue
            break
        case 3:
            self.view.backgroundColor = .red
            break
        default:
            self.view.backgroundColor = .white
        }
    }
    
    
}
