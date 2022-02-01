import Vapor
import Fluent

public final class Category: Content, Codable {
    public var id: String?
    public var name: String?

    public init(data:CategoryData) throws {
        self.id = data.id
        self.name = data.name
    }
}
