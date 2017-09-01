//
//  StringExtension.swift
//  Caishen
//
//  Created by Sagar Natekar on 11/23/15.
//  Copyright © 2015 Prolific Interactive. All rights reserved.
//

import Foundation

extension String {

    //http://stackoverflow.com/a/30404532/1565974
    
    /**
     Convenience method to retreive a substring of `self`.
     
     - parameter fromInclusively: The index of the first character that should be included in the substring.
     - parameter toExclusively: The index of the last character that should no longer be included in the substring.
     
     - returns: Substring starting with the character at index `fromInclusiveley` and ending before the character at index `toExclusively`.
    */
    subscript(fromInclusively: Int, toExclusively: Int) -> String? {
        if characters.count < toExclusively || fromInclusively >= toExclusively {
            return nil
        }
        return self.substring(with: (self.characters.index(self.startIndex, offsetBy: fromInclusively)..<self.characters.index(self.startIndex, offsetBy: toExclusively)))
    }
    
    /**
     - returns: True if this string contains only digits.
     */
    func isNumeric() -> Bool {
        return characters.reduce(true, { (result, value) in
            let string = String(value)
            guard let firstChar = string.utf16.first else {
                return result
            }
            return result && CharacterSet.decimalDigits.contains(UnicodeScalar(firstChar)!)}
        )
    }
}
