//
//  CurrencyCodeToFlagMapper.swift
//  RevolutTest
//
//  Created by Michał Smulski on 24/01/2019.
//  Copyright © 2019 Michał Smulski. All rights reserved.
//

import Foundation

extension CurrencyCodeToFlagMapper {
    static var defaultMap: [String: String ] {
        return ["EUR": "🇪🇺", "AUD": "🇦🇺", "BGN": "🇧🇬", "BRL": "🇧🇷", "CAD": "🇨🇦", "CHF": "🇨🇭", "CNY": "🇨🇳", "CZK": "🇨🇿", "DKK": "🇩🇰", "GBP": "🇬🇧", "HKD": "🇭🇰", "HRK": "🇭🇷", "HUF": "🇭🇺", "IDR": "🇮🇩", "ILS": "🇮🇱", "INR": "🇮🇳", "ISK": "🇮🇸", "JPY": "🇯🇵", "KRW": "🇰🇷", "MXN": "🌮", "MYR": "🇲🇾", "NOK": "🇳🇴", "NZD": "🇳🇿", "PHP": "🇵🇭", "PLN": "🇵🇱", "RON": "🇷🇴", "RUB": "🇷🇺", "SEK": "🇸🇪", "SGD": "🇸🇬", "THB": "🇹🇭", "TRY": "🇹🇷", "USD": "🇺🇸", "ZAR": "🇿🇦"]
    }
}

struct CurrencyCodeToFlagMapper {
    private let map: [String: String]
    
    init(map: [String: String] = CurrencyCodeToFlagMapper.defaultMap) {
        self.map = map
    }
    
    func flagEmoji(from currencyCode: String) -> String? {
        return map[currencyCode]
    }
}
