//
//  PaymentOptionCatigories.swift
//  OsonCloneApp
//
//  Created by user on 06/01/22.
//

import Foundation
import UIKit

enum PaymentOptionCatigories: Int{
    case MobileOperator
    case InternetProvider
    case Telephony
    case CommunalService
    case TaxiService
    case OnlineService
    case Education
    case Charity
    case Purchases
    case AnnouncementAndAdvertisement
    case RestourantAndCafe
    case HostingProvider
    case Medicine
    case Aviaticket
    case Ewallet
    
    var description: String{
        switch self {
        case .MobileOperator:
            return "Мобильные операторы"
        case .InternetProvider:
            return "Интернет провайдеры"
        case .Telephony:
            return "Телефония"
        case .CommunalService:
            return "Гос. и Коммунальные услуги"
        case .TaxiService:
            return "Служба такси"
        case .OnlineService:
            return "Онлайн сервисы"
        case .Education:
            return "Обучение"
        case .Charity:
            return "Благотворительность"
        case .Purchases:
            return "Покупки"
        case .AnnouncementAndAdvertisement:
            return "Объявление и реклама"
        case .RestourantAndCafe:
            return "Рестораны и кафе"
        case .HostingProvider:
            return "Хостинг провайдеры"
        case .Medicine:
            return "Медицина"
        case .Aviaticket:
            return "Авиабилеты"
        case .Ewallet:
            return "Электронные кошельки"
        }
    }
    
    var image: UIImage{
        switch self {
        case .MobileOperator:
            return UIImage(named: "mobile-android") ?? UIImage()
        case .InternetProvider:
            return UIImage(named: "wifi") ?? UIImage()
        case .Telephony:
            return UIImage(named: "phone") ?? UIImage()
        case .CommunalService:
            return UIImage(named: "bag-alt") ?? UIImage()
        case .TaxiService:
            return UIImage(named: "taxi") ?? UIImage()
        case .OnlineService:
            return UIImage(named: "cube") ?? UIImage()
        case .Education:
            return UIImage(named: "graduation-hat") ?? UIImage()
        case .Charity:
            return UIImage(named: "flower") ?? UIImage()
        case .Purchases:
            return UIImage(named: "shopping-trolley") ?? UIImage()
        case .AnnouncementAndAdvertisement:
            return UIImage(named: "document-layout-left") ?? UIImage()
        case .RestourantAndCafe:
            return UIImage(named: "coffee") ?? UIImage()
        case .HostingProvider:
            return UIImage(named: "server-network") ?? UIImage()
        case .Medicine:
            return UIImage(named: "medkit") ?? UIImage()
        case .Aviaticket:
            return UIImage(named: "plane-departure") ?? UIImage()
        case .Ewallet:
            return UIImage(named: "wallet") ?? UIImage()
        }
    }
}
