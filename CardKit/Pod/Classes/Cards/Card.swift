//
//  SPKCard.swift
//  SwiftPaymentKit
//
//  Created by Sagar Natekar on 11/25/15.
//  Copyright © 2015 Prolific Interactive. All rights reserved.
//

import Foundation

/**
 A card represents a physical bank card with all its associated attributes.
*/
public class Card {
    public var bankCardNumber: CardNumber
    public var cardVerificationCode: CardCVC
    public var expiryDate: CardExpiry
    /**
     Provides the card's type based on its bank card number
    */
    public var type: CardType? {
        return CardType.CardTypeForNumber(self.bankCardNumber)
    }
    /**
     Creates a `Card` with given card number, verification code and expiry date.
    */
    public init(bankCardNumber: CardNumber, cardVerificationCode: CardCVC, expiryDate: CardExpiry) {
        self.bankCardNumber = bankCardNumber
        self.cardVerificationCode = cardVerificationCode
        self.expiryDate = expiryDate
    }

    
}