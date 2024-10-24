import TestPackage1
import TestPackage2

public struct StructModel {
    public let object: TestPackage1Struct
    public let object2: TestPackage2Enum

    public init() {
        object = TestPackage1Struct()
        object2 = TestPackage2Enum.testCase
    }
}

public enum EnumModel {
    case value(TestPackage1Enum)
}

open class OpenClassModel {
    public let object: TestPackage1OpenClass

    public init() {
        object = TestPackage1OpenClass()
    }
}

public class PublicClassModel {
    public let object: TestPackage1PublicClass

    public init() {
        object = TestPackage1PublicClass()
    }
}

public actor ActorModel {
    public let object: TestPackage1Actor
    
    public init() {
        object = TestPackage1Actor()
    }
}

public protocol ProtocolModel: TestPackage1Protocol {

}
