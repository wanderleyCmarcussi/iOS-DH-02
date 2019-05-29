//
//  ViewController.swift
//  MeuAppUserDefault
//
//  Created by Wanderley Marcussi on 29/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MensagemLabel: UILabel!
    @IBOutlet weak var senhaTexto: UITextField!
    @IBOutlet weak var emailTexto: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logar(_ sender: UIButton) {
        
        if let _senha = Usar.pegarObjetoTexto(chave: "senha") {
            
            self.fazerLogin(senha: _senha)
            MensagemLabel.text = "temos senha"
            
        }else {
            MensagemLabel.text = "Primeiro acesso"

            Usar.SalvarObjetoTexto(chave: "senha", valor: self.senhaTexto.text ?? "")
            
            Usar.SalvarObjetoTexto(chave: "email", valor: self.emailTexto.text ?? "")
            
            self.fazerLogin(senha: self.senhaTexto.text ?? "")
            
        }

    }
    
    private func fazerLogin(senha: String) {
        
        if self.senhaTexto.text ?? "" == senha {
            
            self.performSegue(withIdentifier: "MinhaHomeVc", sender: nil)
            
        }else {
            MensagemLabel.text = "deu ruim,senha invalida !!!"
        }
    }
}

