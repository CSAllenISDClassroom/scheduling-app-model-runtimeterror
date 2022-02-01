import Vapor
import Fluent
import FluentMySQLDriver

public final class SubcategoryData: Model {
    public static let schema = "Subcategories"


    @ID(custom: "id", generatedBy: .database)
    public var id: String?

    @Field(key: "name")
    public var name: String?
    
    public init() {
    }
}
