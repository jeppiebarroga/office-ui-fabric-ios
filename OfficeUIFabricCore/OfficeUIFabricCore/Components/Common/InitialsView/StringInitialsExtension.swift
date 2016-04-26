// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension String {
    internal func words() -> [String] {
        let range = self.startIndex ..< self.endIndex
        var words = [String]()
        
        self.enumerateSubstringsInRange(range, options: .ByWords) { (word, _, _, _) -> () in
            words.append(word!)
        }
        return words
    }
    
    internal func initials() -> String {
        let words = self.words()
        
        var initials = ""
        
        if (words.count > 0) {
            initials += String(words[0][words[0].startIndex])
        }
        if (words.count > 1) {
            initials += String(words[1][words[1].startIndex])
        }
        
        return initials
    }
}
