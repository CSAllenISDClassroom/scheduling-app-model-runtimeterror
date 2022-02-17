import Vapor
import Fluent
import FluentMySQLDriver

public class SubcategoryController {

    public func getCategories(_ app: Application) throws {
        app.get("subcategories") { req -> Page<Subcategory> in
            let subcategoriesData = try await SubcategoryData.query(on: req.db)
              .paginate(for: req)
            let subcategories = try subcategoriesData.map { try Subcategory(data: $0) }
            return subcategories
        }
    }

    public func getNullCategories(_ app: Application) throws {
        app.get("exceptions", "noSubcategories") { req -> Page<Subcategory> in
            let subcategoryFilters: Set<String?> = [nil, ""]
            let nullSubcategoriesData = try await SubcategoryData.query(on: req.db)
              .filter ( \.$name ~~ subcategoryFilters )
              .paginate(for: req)
            let nullSubcategories = try nullSubcategoriesData.map { try Subcategory(data: $0) }
            return nullSubcategories
        }
    }
}
