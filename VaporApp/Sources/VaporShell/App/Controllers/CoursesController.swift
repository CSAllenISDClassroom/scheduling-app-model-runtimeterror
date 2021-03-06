import Vapor
import Fluent
import FluentMySQLDriver

/// Provides API Endpoints for accessing ``Employee`` related data
public class CoursesController {

    public func getCourses(_ app: Application) throws {
        app.get("courses") { req -> Page<Course> in

            let semester = try? req.query.get(Int.self, at: "semester")
            let location = try? req.query.get(String.self, at: "location")
            let level = try? req.query.get(String.self, at: "level")
            
            let coursesData = try await CourseData.query(on: req.db)
              .filter ( semester == nil ? \.$id != "" : \.$semester == semester! )
              .filter ( location == nil ? \.$id != "" : \.$location == location! )
              .filter ( level == nil ? \.$id != "" : \.$level == level! )
              .paginate(for: req)
            
            let courses = try coursesData.map{ try Course(data: $0) }
            return courses
        }

        app.get("exceptions", "noPeriods") { req -> Page<Course> in
            let coursesData = try await CourseData.query(on: req.db)
              .filter ( \.$periodBitmap == nil )
              .paginate(for: req)

            let courses = try coursesData.map{ try Course(data:$0) }
            return courses
        }
    }

    public func getCourse(_ app: Application) throws {
        app.get("courses", ":id") { req -> Course in
            guard let id = req.parameters.get("id", as: String.self) else {
                throw Abort(.badRequest)
            }
            
            guard let courseData = try await CourseData.query(on: req.db)
                    .filter(\.$id == id)
                    .first() else {
                throw Abort(.notFound)
            }
            let course = try Course(data: courseData)
            return course
        }
    }


    public func getNoCat(_ app: Application) throws {
        app.get("exceptions", "noCategories") { req -> Page<Course> in
            let categories: String? = nil
            //let location = try? req.query.get(String.self, at: "location")
            //let level = try? req.query.get(String.self, at: "level")
            
            let coursesData = try await CourseData.query(on: req.db)
              .filter ( categories == "" ? \.$id != "" : \.$categories == categories )
              .paginate(for: req)
            
            let courses = try coursesData.map{ try Course(data: $0) }
            return courses
            }
    }

    public func getCoursesWithNoSubcategories(_ app: Application) throws {
        app.get("exceptions", "noSubcategories") { req -> Page<Course> in

            let coursesDataWithNoSubcategories = try await CourseData.query(on: req.db)
              .filter( \.$subcategories == nil )
              .paginate(for: req)

            let coursesWithNoSubcategories = try coursesDataWithNoSubcategories.map { try Course(data: $0) }
            return coursesWithNoSubcategories

        }
    }

    public func getNoLocation(_ app: Application) throws {
        app.get("exceptions", "noLocation") { req -> Page<Course> in

            let courseData = try await CourseData.query(on: req.db)
              .filter( \.$location == nil )
              .paginate(for: req)

            let courses = try courseData.map { try Course(data: $0) }
            return courses

        }
    }

    public func getNoLevel(_ app: Application) throws {
        app.get("exceptions", "noLevel") { req -> Page<Course> in

            let courseData = try await CourseData.query(on: req.db)
              .filter( \.$level == nil )
              .paginate(for: req)

            let courses = try courseData.map { try Course(data: $0) }
            return courses

        }
    }

    public func getNoSemesterLength(_ app: Application) throws {
        app.get("exceptions", "noSemesterLength") { req -> Page<Course> in

            let courseData = try await CourseData.query(on: req.db)
              .filter( \.$semesterLength == nil )
              .paginate(for: req)

            let courses = try courseData.map { try Course(data: $0) }
            return courses

        }
    }

    /// Retrieves the employee record specified by the ID
    ///
    /// * API Endpoint: /employees/{id}
    /// * Method: GET
    /// * Query parameters: None
    /// * Status codes:
    ///   * 200 Successful
    ///   * 400 Bad request
    ///   * 404 Not found
    ///
    /// Returns: ``Employee``
    /// 

    /*
    public func getEmployeeById(_ app: Application) throws {
        app.get("employees", ":id") { req -> Employee in

            guard let id = req.parameters.get("id", as: Int.self) else {
                throw Abort(.badRequest)
            }

            guard let employee = try await Employee.query(on: req.db)
                    .filter(\.$id == id)
                    .first() else {
                throw Abort(.notFound)
            }
            return employee
        }
    }

     */
}
