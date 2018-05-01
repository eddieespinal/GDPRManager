//
//  GDPRManager.swift
//
//  Created by Eddie Espinal on 4/29/18.
//  Copyright © 2018 EspinalLab, LLC. All rights reserved.
//

import Foundation

// The 28 member countries of the EU
let EUCountries = ["BE": "Belgium",
                   "BG": "Bulgaria",
                   "CZ": "Czech Republic",
                   "DK": "Denmark",
                   "DE": "Germany",
                   "EE": "Estonia",
                   "IE": "Ireland",
                   "GR": "Greece",
                   "ES": "Spain",
                   "FR": "France",
                   "HR": "Croatia",
                   "IT": "Italy",
                   "CY": "Cyprus",
                   "LV": "Latvia",
                   "LT": "Lithuania",
                   "LU": "Luxembourg",
                   "HU": "Hungary",
                   "MT": "Malta",
                   "NL": "Netherlands",
                   "AT": "Austria",
                   "PL": "Poland",
                   "PT": "Portugal",
                   "RO": "Romania",
                   "SI": "Slovenia",
                   "SK": "Slovakia",
                   "FI": "Finland",
                   "SE": "Sweden",
                   "GB": "United Kingdom"]

@objc open class GDPRManager: NSObject {

    class func checkIfEUUser() -> Bool {
        guard GDPRManager.getCountry() != nil else {
            return false
        }
        return true
    }
    
    class func getCountry() -> String? {
        if let countryCode = (Locale.current as NSLocale).object(forKey: .countryCode) as? String {
            guard let country = EUCountries[countryCode] else {
                return nil
            }
            return country
        }
        return nil
    }
    
    class func getCountryWithAlpha2Code(_ code: String) -> String? {
        guard let country = EUCountries[code] else {
            return nil
        }
        return country
    }
}
