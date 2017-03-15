/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/struct.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "google.protobuf"

///   `NullValue` is a singleton enumeration to represent the null value for the
///   `Value` type union.
///  
///    The JSON representation for `NullValue` is JSON `null`.
public enum Google_Protobuf_NullValue: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
  public typealias RawValue = Int

  ///   Null value.
  case nullValue // = 0
  case UNRECOGNIZED(Int)

  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NULL_VALUE"),
  ]

  public init() {
    self = .nullValue
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .nullValue
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .nullValue: return 0
    case .UNRECOGNIZED(let i): return i
    }
  }

}

///   `Struct` represents a structured data value, consisting of fields
///   which map to dynamically typed values. In some languages, `Struct`
///   might be supported by a native representation. For example, in
///   scripting languages like JS a struct is represented as an
///   object. The details of that representation are described together
///   with the proto support for the language.
///  
///   The JSON representation for `Struct` is JSON object.
public struct Google_Protobuf_Struct: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Struct"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fields"),
  ]

  ///   Unordered map of dynamically typed values.
  public var fields: Dictionary<String,Google_Protobuf_Value> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Protobuf_Value>.self, value: &fields)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !fields.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Protobuf_Value>.self, value: fields, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Google_Protobuf_Struct) -> Bool {
    if fields != other.fields {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

///   `Value` represents a dynamically typed value which can be either
///   null, a number, a string, a boolean, a recursive struct value, or a
///   list of values. A producer of value is expected to set one of that
///   variants, absence of any variant indicates an error.
///  
///   The JSON representation for `Value` is JSON value.
public struct Google_Protobuf_Value: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Value"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "null_value", json: "nullValue"),
    2: .unique(proto: "number_value", json: "numberValue"),
    3: .unique(proto: "string_value", json: "stringValue"),
    4: .unique(proto: "bool_value", json: "boolValue"),
    5: .unique(proto: "struct_value", json: "structValue"),
    6: .unique(proto: "list_value", json: "listValue"),
  ]

  private class _StorageClass {
    var _kind: Google_Protobuf_Value.OneOf_Kind?

    init() {}

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._kind = _kind
      return clone
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  ///   Represents a null value.
  public var nullValue: Google_Protobuf_NullValue {
    get {
      if case .nullValue(let v)? = _storage._kind {
        return v
      }
      return Google_Protobuf_NullValue.nullValue
    }
    set {
      _uniqueStorage()._kind = .nullValue(newValue)
    }
  }

  ///   Represents a double value.
  public var numberValue: Double {
    get {
      if case .numberValue(let v)? = _storage._kind {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._kind = .numberValue(newValue)
    }
  }

  ///   Represents a string value.
  public var stringValue: String {
    get {
      if case .stringValue(let v)? = _storage._kind {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._kind = .stringValue(newValue)
    }
  }

  ///   Represents a boolean value.
  public var boolValue: Bool {
    get {
      if case .boolValue(let v)? = _storage._kind {
        return v
      }
      return false
    }
    set {
      _uniqueStorage()._kind = .boolValue(newValue)
    }
  }

  ///   Represents a structured value.
  public var structValue: Google_Protobuf_Struct {
    get {
      if case .structValue(let v)? = _storage._kind {
        return v
      }
      return Google_Protobuf_Struct()
    }
    set {
      _uniqueStorage()._kind = .structValue(newValue)
    }
  }

  ///   Represents a repeated `Value`.
  public var listValue: Google_Protobuf_ListValue {
    get {
      if case .listValue(let v)? = _storage._kind {
        return v
      }
      return Google_Protobuf_ListValue()
    }
    set {
      _uniqueStorage()._kind = .listValue(newValue)
    }
  }

  public var kind: OneOf_Kind? {
    get {return _storage._kind}
    set {
      _uniqueStorage()._kind = newValue
    }
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Kind: Equatable {
    case nullValue(Google_Protobuf_NullValue)
    case numberValue(Double)
    case stringValue(String)
    case boolValue(Bool)
    case structValue(Google_Protobuf_Struct)
    case listValue(Google_Protobuf_ListValue)

    public static func ==(lhs: Google_Protobuf_Value.OneOf_Kind, rhs: Google_Protobuf_Value.OneOf_Kind) -> Bool {
      switch (lhs, rhs) {
      case (.nullValue(let l), .nullValue(let r)): return l == r
      case (.numberValue(let l), .numberValue(let r)): return l == r
      case (.stringValue(let l), .stringValue(let r)): return l == r
      case (.boolValue(let l), .boolValue(let r)): return l == r
      case (.structValue(let l), .structValue(let r)): return l == r
      case (.listValue(let l), .listValue(let r)): return l == r
      default: return false
      }
    }

    fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
      switch fieldNumber {
      case 1:
        var value = Google_Protobuf_NullValue()
        try decoder.decodeSingularEnumField(value: &value)
        self = .nullValue(value)
        return
      case 2:
        var value = Double()
        try decoder.decodeSingularDoubleField(value: &value)
        self = .numberValue(value)
        return
      case 3:
        var value = String()
        try decoder.decodeSingularStringField(value: &value)
        self = .stringValue(value)
        return
      case 4:
        var value = Bool()
        try decoder.decodeSingularBoolField(value: &value)
        self = .boolValue(value)
        return
      case 5:
        var value: Google_Protobuf_Struct?
        try decoder.decodeSingularMessageField(value: &value)
        if let value = value {
          self = .structValue(value)
          return
        }
      case 6:
        var value: Google_Protobuf_ListValue?
        try decoder.decodeSingularMessageField(value: &value)
        if let value = value {
          self = .listValue(value)
          return
        }
      default:
        break
      }
      return nil
    }

    fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V, start: Int, end: Int) throws {
      switch self {
      case .nullValue(let v):
        if start <= 1 && 1 < end {
          try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
        }
      case .numberValue(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
        }
      case .stringValue(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularStringField(value: v, fieldNumber: 3)
        }
      case .boolValue(let v):
        if start <= 4 && 4 < end {
          try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
        }
      case .structValue(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
        }
      case .listValue(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        }
      }
    }
  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1...6:
          if _storage._kind != nil {
            try decoder.handleConflictingOneOf()
          }
          _storage._kind = try Google_Protobuf_Value.OneOf_Kind(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      try _storage._kind?.traverse(visitor: &visitor, start: 1, end: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Google_Protobuf_Value) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._kind != other_storage._kind {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

///   `ListValue` is a wrapper around a repeated field of values.
///  
///   The JSON representation for `ListValue` is JSON array.
public struct Google_Protobuf_ListValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
  ]

  ///   Repeated field of dynamically typed values.
  public var values: [Google_Protobuf_Value] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &values)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !values.isEmpty {
      try visitor.visitRepeatedMessageField(value: values, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Google_Protobuf_ListValue) -> Bool {
    if values != other.values {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
