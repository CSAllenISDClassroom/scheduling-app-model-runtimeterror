import Vapor
import Fluent

public final class Subcategory: Content, Codable {

    public var id: String?
    public var name: String?



    public init(data: SubcategoryData) throws {
        self.id = data.id
        self.name = data.name
    }
}
