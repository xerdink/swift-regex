/**
    Copyright © 2018, Orhan Istenhickorkmaz.
 */

import Foundation

let searchFor = "tech"
let testString = "I am working at a great tech company."

var regex = try NSRegularExpression(pattern: searchFor)

var matches = regex.matches(in: testString, range: NSMakeRange(0, testString.utf16.count))

matches.count

/**
    This pattern search strings
    which starts with # and followed by one or more
    numeric chars.
 */
let searchSpecial = "#[a-z0-9]+"

regex = try NSRegularExpression(pattern: searchSpecial)

matches = regex.matches(in: testString, range: NSMakeRange(0, testString.utf16.count))

matches.count
