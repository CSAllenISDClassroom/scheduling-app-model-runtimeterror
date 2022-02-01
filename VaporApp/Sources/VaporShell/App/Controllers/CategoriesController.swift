import Vapor
import Fluent
import FluentMySQLDriver

// Provides API Endpoints for accessing ''Category'' related data
public class CategoriesController {
    public func getCategories(_ app: Application) throws {
        app.get("categories") { req -> Page<Category> in
            let categoriesData = try await CategoryData.query(on: req.db)
              .paginate(for: req)
            let categories = try categoriesData.map{ try Category(data: $0) }
            return categories
        }
    }
}
