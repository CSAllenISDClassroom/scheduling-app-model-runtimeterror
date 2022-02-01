import Vapor
import Fluent
import FluentMySQLDriver

public class Subcategory {

    public func getCategories(_app: Application) throws {
        app.get("Subcategories") { req -> Page<Subcategories> in
            let subcategoriesData = try await SubcategoryData.query(on: req.db)
              .paginate(for: req)
            let subcategories = try subcategories.map { try Subcategories(data: $0) }
            return subcategories
        }
    }
}
