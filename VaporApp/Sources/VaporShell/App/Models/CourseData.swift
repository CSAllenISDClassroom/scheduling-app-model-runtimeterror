/*
VaporShell provides a minimal framework for starting Vapor projects.
Copyright (C) 2021, 2022 CoderMerlin.com
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import Vapor
import Fluent
import FluentMySQLDriver

/// This class provides the model for an Employee
public final class CourseData: Model, Content {
    // Name of the table or collection.
    public static let schema = "Courses"

    ///Unique identifier for this Course.
    @ID(custom: "courseCode", generatedBy: .database)
    public var id: String?

    ///length of course in semesters
    @Field(key: "semesterLength")
    public var semesterLength: String?

    ///semester
    @Field(key: "semester")
    public var semester: Int

    ///shortDescription
    @Field(key: "shortDescription")
    public var shortDescription: String

    ///description
    @Field(key: "description")
    public var description: String?

    ///dualCreditDailySchedule
    @Field(key: "dualCreditDailySchedule")
    public var dualCreditDailySchedule: String?

    ///location
    @Field(key: "location")
    public var location: String?

    ///periodBitMap
    @Field(key: "periodBitMap")
    public var periodBitMap: Int?
    
    // Creates a new, empty Course.
    public init() { }
}

