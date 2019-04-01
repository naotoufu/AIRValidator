//
//  MinimumLengthRule.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

public struct MinimumLengthRule: Rule {
    private let length: UInt
    public init(_ length: UInt) {
        self.length = length
    }
    
    public func validate<T>(_ value: T) -> Bool {
        guard let value = value as? String else { return false }
        return value.count >= Int(self.length)
    }
}
