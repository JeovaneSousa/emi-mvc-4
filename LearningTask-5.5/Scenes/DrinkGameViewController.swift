//
//  ViewController.swift
//  LearningTask-5.5
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class DrinkGameViewController: UIViewController {

    var drinkGame: DrinkGame? {
        didSet{
            if let _ = drinkGame, isViewLoaded{
                atualizaView()
            }
        }
    }
    
    @IBOutlet weak var bebidaAtualLabel: UILabel!
    @IBOutlet weak var bebidaAnteriorLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        atualizaView()
        // Do any additional setup after loading the view.
    }
    
    func atualizaView(){
        bebidaAtualLabel.text = drinkGame?.bebidaAtual
        bebidaAnteriorLabel.text = drinkGame?.bebidaAnterior
        let bebida = DrinkGame.Bebida(rawValue: drinkGame?.bebidaAtual ?? "")
        backgroundView.backgroundColor = BackgroundColor.para(bebida)
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        drinkGame?.sorteiaBebida()
    }
}

