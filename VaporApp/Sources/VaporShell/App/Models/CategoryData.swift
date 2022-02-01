import Vapor
import Fluent
import FluentMySQLDriver

// This class provides the model for a Category
public final class CategoryData: Model {
    // Name of the table
    public static let schema = "Categories"

    // Unique identifier for this category
    @ID(custom: "id", generatedBy: .database)
    public var id: String?

    // Name of this category
    @Field(key: "name")
    public var name: String?

    // Creates a new, empty Category
    public init() { }
}
