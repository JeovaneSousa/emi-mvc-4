
import UIKit

class BackgroundColor {
    
    static func para(_ bebida: DrinkGame.Bebida?) -> UIColor {
        switch bebida {
        case .Beer:
            return UIColor(named:"Beer")!
        case .Whisky:
            return UIColor(named:"Whisky")!
        case .Milk:
            return UIColor(named:"Milk")!
        default:
            return UIColor.systemBackground
            // UIColor(named:) pode ajudar a referenciar as cores do catálogo de Assets
        }
        
    }
    
}
