//
//  MobileOperator.swift
//  OsonCloneApp
//
//  Created by user on 06/01/22.
//

import Foundation
import UIKit

enum MobileOperators: Int{
    case Beeline
    case UMS
    case Ucell
    case UzMobile
    case UzMobileCDMA
    case BeelineRu
    case BeelineKz
    case BeelineKrg
    
    var description: String{
        switch self {
        case .Beeline:
            return "Beeline"
        case .UMS:
            return "UMS"
        case .Ucell:
            return "Ucell"
        case .UzMobile:
            return "UzMobile GSM"
        case .UzMobileCDMA:
            return "UzMobile CDMA"
        case .BeelineRu:
            return "Beeline (Россия)"
        case .BeelineKz:
            return "Beeline (Казахстан)"
        case .BeelineKrg:
            return "Beeline (Кыргызстан)"
        }
    }
    
    var image: UIImage{
        switch self {
        case .Beeline:
            return UIImage(named: "Logo-3") ?? UIImage()
        case .UMS:
            return UIImage(named: "Logo-1") ?? UIImage()
        case .Ucell:
            return UIImage(named: "Logo") ?? UIImage()
        case .UzMobile:
            return UIImage(named: "Logo-2") ?? UIImage()
        case .UzMobileCDMA:
            return UIImage(named: "Logo-2") ?? UIImage()
        case .BeelineRu:
            return UIImage(named: "Logo-3") ?? UIImage()
        case .BeelineKz:
            return UIImage(named: "Logo-3") ?? UIImage()
        case .BeelineKrg:
            return UIImage(named: "Logo-3") ?? UIImage()
        }
    }
    
    var bonusImage: UIImage{
        switch self {
        case .Beeline:
            return UIImage(named: "new+-1") ?? UIImage()
        case .UMS:
            return UIImage(named: "") ?? UIImage()
        case .Ucell:
            return UIImage(named: "") ?? UIImage()
        case .UzMobile:
            return UIImage(named: "new+") ?? UIImage()
        case .UzMobileCDMA:
            return UIImage(named: "") ?? UIImage()
        case .BeelineRu:
            return UIImage(named: "new+-1") ?? UIImage()
        case .BeelineKz:
            return UIImage(named: "new+-1") ?? UIImage()
        case .BeelineKrg:
            return UIImage(named: "new+-1") ?? UIImage()
        }
    }
}
