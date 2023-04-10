//
//  Name.swift
//  
//
//  Created by Jeremy Bannister on 4/11/23.
//

///
public struct
    Name:
        Codable,
        Comparable,
        ExpressibleByStringLiteral,
        Hashable {
    
    ///
    public var asString: String
    
    ///
    public init (_ value: String) {
        self.asString = value
    }
}

///
extension Name {
    
    ///
    public func encode (to encoder: Encoder) throws {
        try self.asString.encode(to: encoder)
    }
    
    ///
    public init (from decoder: Decoder) throws {
        try self.init(.init(from: decoder))
    }
}

///
extension Name {
    
    ///
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.asString < rhs.asString
    }
}

///
extension Name {
    
    ///
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.asString == rhs.asString
    }
}

///
extension Name {
    
    ///
    public func hash (into hasher: inout Hasher) {
        self.asString.hash(into: &hasher)
    }
}

///
extension Name {
    
    ///
    public init (stringLiteral value: String) {
        self.init(value)
    }
}
