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
        CustomStringConvertible,
        ExpressibleByStringLiteral,
        Hashable,
        RawRepresentable {
    
    ///
    public var asString: String
    
    ///
    public init (_ value: String) {
        self.asString = value
    }
}

// MARK: Codable
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

// MARK: Comparable
extension Name {
    
    ///
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.asString < rhs.asString
    }
}

// MARK: CustomStringConvertible
extension Name {
    
    ///
    public var description: String {
        self.asString
    }
}

// MARK: ExpressibleByStringLiteral
extension Name {
    
    ///
    public init (stringLiteral value: String) {
        self.init(value)
    }
}

// MARK: Hashable
extension Name {
    
    ///
    public func hash (into hasher: inout Hasher) {
        self.asString.hash(into: &hasher)
    }
}

// MARK: Equatable
extension Name {
    
    ///
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.asString == rhs.asString
    }
}

// MARK: RawRepresentable
extension Name {
    
    ///
    public var rawValue: String {
        self.asString
    }
    
    ///
    public init? (rawValue: String) {
        self.init(stringLiteral: rawValue)
    }
    
    ///
    public typealias RawValue = String
}
