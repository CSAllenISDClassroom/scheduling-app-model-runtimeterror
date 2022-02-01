import Vapor
import Fluent
import FluentMySQLDriver

public class SubcategoryController {

    public func getCategories(_app: Application) throws {
        app.get("Subcategories") { req -> Page<Subcategory> in
            let subcategoriesData = try await SubcategoryData.query(on: req.db)
              .paginate(for: req)
            let subcategories = try subcategoriesData.map { try Subcategory(data: $0) }
            return subcategories
        }
    }
}
