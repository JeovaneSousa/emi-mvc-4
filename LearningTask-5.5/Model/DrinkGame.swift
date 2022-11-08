//
//  DrinkGame.swift
//  LearningTask-5.5
//
//  Created by jeovane.barbosa on 07/11/22.
//
import UIKit

struct DrinkGame {
    private(set) var bebidaAnterior: String = "🙋"
    private(set) var bebidaAtual: String = "🙋"
    private var todasAsBebidas = Bebida.allCases
    
    mutating func sorteiaBebida () {
        bebidaAnterior = bebidaAtual
        bebidaAtual = todasAsBebidas.randomElement()?.rawValue ?? "🙋"
    }
    
    enum Bebida: String, CaseIterable {
        case Beer = "🍺"
        case Milk = "🥛"
        case Whisky = "🥃"
    }
    
    
}
