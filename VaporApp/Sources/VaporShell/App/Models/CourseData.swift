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
public final class CourseData: Model {
    // Name of the table or collection.
    public static let schema = "Courses"

    ///Unique identifier for this Course.
    @ID(custom: "courseCode", generatedBy: .database)
    public var id: String?

    ///Short description
    @Field(key: "shortDescription")
    public var shortDescription: String

    ///Long description
    @Field(key: "description")
    public var description: String?
    
    ///Semester
    @Field(key: "semester")
    public var semester: Int

    ///Location of Course
    @Field(key: "location")
    public var location: String

    /*
    ///credits low
    @Field(key: "creditsLow")
    public var creditsLow: Double?

    ///credits high
    @Field(key: "creditsHigh")
    public var creditsHigh: Double?
    
    ///Minimum grade level
    @Field(key: "gradesLow")
    public var gradesLow: Int?
    
    ///Maximum grade level
    @Field(key: "gradesHigh")
    public var gradesHigh: Int?
    
    ///is Application
    @Field(key: "isApplication")
    public var isApplication: Bool
    
    ///On Level
    @Field(key: "isOnLevel")
    public var isOnLevel: Bool
    
    ///Pre-ap
    @Field(key: "isPreAP")
    public var isPreAP: Bool
    
    ///AP
    @Field(key: "isAP")
    public var isAP: Bool
    
    ///Dual Credit
    @Field(key: "isDualCredit")
    public var isDualCredit: Bool
    
    ///IB
    @Field(key: "isIB")
    public var isIB: Bool
    
    ///application code
    @Field(key: "applicationCode")
    public var applicationCode: String? 
     */
    
    ///avalibility bit map
    @Field(key: "availabilityBitmap")
    public var availabilityBitmap: Int

    ///semester length
    @Field(key: "semesterLength")
    public var semesterLength: String

    ///avalibility bit map
    @Field(key: "dualCreditDailySchedule")
    public var dualCreditDailySchedule: String?
    
    // Creates a new, empty Course.
    public init() { }
}

