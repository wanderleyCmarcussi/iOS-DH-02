//
//  NovoAplicativoViewController.swift
//  AppCatalog
//
//  Created by Wanderley Marcussi on 01/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class NovoAplicativoViewController: UIViewController {

    @IBOutlet weak var nomeText: UITextField!
    @IBOutlet weak var desenvolvedorText: UITextField!
    @IBOutlet weak var precoText: UITextField!
    @IBOutlet weak var categoriaEscolha: UISegmentedControl!
    @IBOutlet weak var iosEscolha: UISwitch!
    @IBOutlet weak var androidEscolha: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
