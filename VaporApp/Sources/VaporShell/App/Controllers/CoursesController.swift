import Vapor
import Fluent
import FluentMySQLDriver

/// Provides API Endpoints for accessing ``Employee`` related data
public class CoursesController {

    public func getCourses(_ app: Application) throws {
        app.get("courses") { req -> Page<Course> in

            let coursesData = CourseData.query(on: req.db)

            var filteredCoursesData = coursesData

            if let semester = try? req.query.get(Int.self, at: "semester") {
                filteredCoursesData = filteredCoursesData.filter(\.$semester == semester)
            }

            if let location = try? req.query.get(String.self, at: "location") {
                filteredCoursesData = filteredCoursesData.filter(\.$location == location)
            }

            if let level = try? req.query.get(String.self, at: "level") {
                filteredCoursesData = filteredCoursesData.filter(\.$level == level)
            }
            
            let paginatedCoursesData = try await filteredCoursesData.paginate(for: req)
            let courses = try paginatedCoursesData.map{ try Course(data: $0) }
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
