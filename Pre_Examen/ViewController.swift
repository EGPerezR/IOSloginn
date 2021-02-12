//
//  ViewController.swift
//  Pre_Examen
//
//  Created by Diseno on 12/02/21.
//  Copyright © 2021 Diseno. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var Emmanueltfcorreo: UITextField!
    @IBOutlet weak var EmmanuelTfContraseña: UITextField!
    @IBOutlet weak var Emmanuelbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Emmanuelbtn.layer.cornerRadius = self.Emmanuelbtn.bounds.height/2
        // Do any additional setup after loading the view.
        
    }

    
    
    @IBAction func IniciarSesion(_ sender: UIButton) {
        
        let correo:String = "emmanuel"
        let contraseña:String = "1234"
        
        if Emmanueltfcorreo.text == correo &&  EmmanuelTfContraseña.text == contraseña
        {
            self.alertDfault(withTitle: "Bienvenido", withMsg: "Has sido logeado con exito")
        }else{
            sender.shake()
        }
        
    
}
    
}
extension UIViewController{
    func alertDfault(withTitle title:String, withMsg msg:String){
        let alert = UIAlertController(title:title, message: msg,preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default , handler: {(action) in alert.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert,animated: true, completion: nil)
    }
    
}

extension UIView{
    func shake(duration: TimeInterval = 0.5, xValue: CGFloat = 12, yValue:CGFloat = 0){
        self.transform = CGAffineTransform(translationX: xValue, y: yValue)
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping:  0.4, initialSpringVelocity: 1.0, options: .curveEaseInOut,animations: {self.transform = CGAffineTransform.identity}, completion: nil)
    }
}
